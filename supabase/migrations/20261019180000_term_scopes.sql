-- Een onduidelijk woord kan meerdere bronnen hebben, en soms juist een bekende
-- kring. Glucosamine komt van schaaldieren of van mais; "groenten" kan erwten,
-- soja of aardappel zijn, maar nooit kip. Tot nu toe kon een woord maar één
-- allergeen aanwijzen ("bron") of meteen alles verbergen ("onduidelijk"), en dat
-- laatste is onnodig streng: een bezoeker die eieren vermijdt kreeg "Controleer"
-- te zien door een woord dat nooit een ei kan zijn.
--
-- Daarom: allergen_keys text[] in plaats van allergen_key text.
--
--   onschuldig   geen allergenen (allergen_keys leeg)
--   bron         precies één allergeen; het woord wordt een genoemde bron
--   onduidelijk  nul of meer allergenen die erachter kunnen zitten; leeg betekent
--                nog steeds "kan alles zijn", want dat is de eerlijke lezing als
--                niemand het weet
--
-- Bestaande rijen schuiven mee: elk ingedeeld woord houdt zijn allergeen.
-- Opnieuw uitvoeren is veilig: de oude kolom bestaat dan niet meer en het
-- overschrijven wordt overgeslagen.

alter table public.ingredient_terms add column if not exists allergen_keys text[];

do $$
begin
  if exists (
    select 1
    from pg_attribute a
    join pg_class c on c.oid = a.attrelid
    join pg_namespace n on n.oid = c.relnamespace
    where n.nspname = 'public'
      and c.relname = 'ingredient_terms'
      and a.attname = 'allergen_key'
      and a.attnum > 0
      and not a.attisdropped
  ) then
    update public.ingredient_terms
    set allergen_keys = array[allergen_key]
    where allergen_key is not null and allergen_keys is null;
  end if;
end $$;

-- De oude functie noemt de oude kolom bij naam; eerst weg, dan de kolom.
drop function if exists public.classify_ingredient_term(text, text, text, text);

alter table public.ingredient_terms drop constraint if exists ingredient_terms_bron_heeft_allergeen;
alter table public.ingredient_terms drop column if exists allergen_key;

alter table public.ingredient_terms drop constraint if exists ingredient_terms_keys_kloppen;
alter table public.ingredient_terms add constraint ingredient_terms_keys_kloppen check (
  case kind
    when 'onschuldig' then allergen_keys is null
    when 'bron' then coalesce(array_length(allergen_keys, 1), 0) = 1
    else allergen_keys is null or coalesce(array_length(allergen_keys, 1), 0) >= 1
  end
);

create or replace function public.classify_ingredient_term(
  p_term text,
  p_kind text,
  p_allergen_keys text[] default null,
  p_note text default null
) returns text
language plpgsql
security definer
set search_path = public
as $$
declare
  v_term text := btrim(lower(coalesce(p_term, '')));
  v_keys text[] := nullif(array(
    select distinct btrim(lower(k))
    from unnest(coalesce(p_allergen_keys, '{}'::text[])) as k
    where btrim(coalesce(k, '')) <> ''
  ), '{}');
begin
  if not coalesce(public.is_admin(), false) then
    raise exception 'Alleen een beheerder kan de woordenschat uitbreiden.' using errcode = '42501';
  end if;
  if v_term = '' then
    raise exception 'Een leeg woord kan niet worden ingedeeld.';
  end if;
  if p_kind not in ('onschuldig', 'bron', 'onduidelijk') then
    raise exception 'Onbekende indeling "%"; gebruik onschuldig, bron of onduidelijk.', p_kind;
  end if;
  if p_kind = 'bron' and coalesce(array_length(v_keys, 1), 0) <> 1 then
    raise exception 'Kies bij "bron" precies één allergeen.';
  end if;
  if p_kind = 'onschuldig' and v_keys is not null then
    raise exception '"Onschuldig" hoort geen allergenen te hebben.';
  end if;

  insert into public.ingredient_terms (term, kind, allergen_keys, note, created_by)
  values (
    v_term,
    p_kind,
    case when p_kind = 'onschuldig' then null else v_keys end,
    nullif(btrim(coalesce(p_note, '')), ''),
    (select auth.uid())
  )
  on conflict (term) do update
    set kind = excluded.kind,
        allergen_keys = excluded.allergen_keys,
        note = excluded.note,
        created_by = excluded.created_by,
        created_at = now();

  return v_term;
end;
$$;

revoke all on function public.classify_ingredient_term(text, text, text[], text) from public;
grant execute on function public.classify_ingredient_term(text, text, text[], text) to authenticated;

-- Proefregels opruimen: "test" en "veel" zijn ooit ingedeeld om de knop te
-- proberen en komen in geen enkel etiket voor. Ze staan hier zodat de
-- woordenlijst weer alleen echte woorden bevat.
delete from public.ingredient_terms where term in ('test', 'veel');

-- Twee woorden die al zijn opgezocht, zodat ze niet opnieuw langs de keuring
-- komen. De indeling is "onduidelijk": de site zegt eerlijk "kan erin zitten"
-- voor precies de bronnen hieronder, en de rest van het etiket wordt er niet
-- door geraakt.
--
--   glucosamine   van schaaldieren of van mais (gefermenteerd); het etiket zegt
--                 niet welke van de twee
--   chondroitine  van kraakbeen van verschillende dieren; welke soort het is,
--                 staat er niet op (ei, melk en schaaldieren kunnen het niet
--                 zijn, dus die blijven vrij)
--
-- De aantekening is voor in het beheer; op de site staat bij zo'n woord gewoon
-- "Controleer etiket/fabrikant".
insert into public.ingredient_terms (term, kind, allergen_keys, note)
values
  ('glucosamine', 'onduidelijk', array['corn', 'shellfish'],
   'kan van schaaldieren of van maïs gemaakt zijn; welke van de twee het is, moet bij de fabrikant nagevraagd worden'),
  ('chondroitine', 'onduidelijk',
   array['beef', 'chicken', 'duck', 'horse', 'kangaroo', 'lamb', 'ostrich', 'pork', 'poultry', 'rabbit', 'turkey', 'venison', 'fish'],
   'kan van kraakbeen van verschillende dieren gemaakt zijn (rund, varken, kip, vis); welke bron het is, moet bij de fabrikant nagevraagd worden')
on conflict (term) do update
  set kind = excluded.kind,
      allergen_keys = excluded.allergen_keys,
      note = excluded.note,
      created_by = excluded.created_by,
      created_at = now();
