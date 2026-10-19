-- De woordenschat als gegeven in plaats van als code.
--
-- De keuring van een etiket loopt tegen woorden aan die ze niet kent. In plaats
-- van per product opnieuw twijfelen, deelt de beheerder zo'n woord één keer in.
-- Die ene beslissing geldt daarna voor alle producten met dat woord, zonder
-- nieuwe versie van de site. Drie indelingen zijn mogelijk:
--
--   onschuldig   geen bron van een allergeen uit onze lijst, en verbergt er ook
--                geen (bijvoorbeeld een hulpstof)
--   bron         dit woord is een van de allergenen uit de lijst; het wordt
--                daarmee een genoemde bron in de tekst
--   onduidelijk  het kan een allergeen verbergen, maar het etiket zegt niet
--                welke; het blijft dus blokkeren tot de fabrikant uitsluitsel
--                geeft. Eerlijk, ook al is het geen antwoord.
--
-- De tabel is openbaar leesbaar: de vergelijking op de site gebruikt dezelfde
-- indelingen, zodat bezoeker en beheerder altijd hetzelfde oordeel zien. Alleen
-- een beheerder kan iets wijzigen, en dat gaat via classify_ingredient_term().

create table if not exists public.ingredient_terms (
  term text primary key,
  kind text not null check (kind in ('onschuldig', 'bron', 'onduidelijk')),
  allergen_key text,
  note text,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  constraint ingredient_terms_bron_heeft_allergeen check ((kind = 'bron') = (allergen_key is not null))
);

alter table public.ingredient_terms enable row level security;

create policy "iedereen leest de woordenschat" on public.ingredient_terms
  for select to anon, authenticated using (true);
create policy "beheerders beheren de woordenschat" on public.ingredient_terms
  for all to authenticated using ((select public.is_admin())) with check ((select public.is_admin()));

grant select on public.ingredient_terms to anon, authenticated;
grant insert, update, delete on public.ingredient_terms to authenticated;

create or replace function public.classify_ingredient_term(
  p_term text,
  p_kind text,
  p_allergen_key text default null,
  p_note text default null
) returns text
language plpgsql
security definer
set search_path = public
as $$
declare
  v_term text := btrim(lower(coalesce(p_term, '')));
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
  if p_kind = 'bron' and coalesce(p_allergen_key, '') = '' then
    raise exception 'Kies bij "bron" ook het allergeen waar het woord bij hoort.';
  end if;

  insert into public.ingredient_terms (term, kind, allergen_key, note, created_by)
  values (
    v_term,
    p_kind,
    case when p_kind = 'bron' then p_allergen_key else null end,
    nullif(btrim(coalesce(p_note, '')), ''),
    (select auth.uid())
  )
  on conflict (term) do update
    set kind = excluded.kind,
        allergen_key = excluded.allergen_key,
        note = excluded.note,
        created_by = excluded.created_by,
        created_at = now();

  return v_term;
end;
$$;

revoke all on function public.classify_ingredient_term(text, text, text, text) from public;
grant execute on function public.classify_ingredient_term(text, text, text, text) to authenticated;
