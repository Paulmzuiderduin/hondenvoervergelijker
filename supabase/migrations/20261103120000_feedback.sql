-- Korte, anonieme feedback vanuit de vergelijker.
--
-- Bezoekers mogen alleen invoegen. Lezen, wijzigen en verwijderen gebeurt via
-- de beheeromgeving/Supabase-dashboard, niet met de publieke anon-sleutel.
-- Vrije tekst is bewust beperkt en er wordt geen IP-adres opgeslagen.

create table if not exists public.feedback (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  page text not null default '/',
  url text,
  rating smallint check (rating is null or rating between 1 and 5),
  results_logical text check (results_logical is null or results_logical in ('ja', 'nee', 'twijfel')),
  message text,
  contact text,
  status text not null default 'nieuw' check (status in ('nieuw', 'gelezen', 'opgelost')),
  user_agent text
);

comment on table public.feedback is 'Anonieme feedback van bezoekers van de vergelijker.';
comment on column public.feedback.results_logical is 'Vond de bezoeker de resultaten logisch: ja, nee of twijfel.';
comment on column public.feedback.contact is 'Optioneel e-mailadres; alleen invullen als de bezoeker een reactie wil.';

alter table public.feedback enable row level security;

revoke all on public.feedback from anon, authenticated;
grant insert on public.feedback to anon, authenticated;

drop policy if exists "Bezoekers mogen feedback insturen" on public.feedback;
create policy "Bezoekers mogen feedback insturen"
on public.feedback
for insert
to anon, authenticated
with check (
  char_length(page) <= 500
  and char_length(coalesce(url, '')) <= 2000
  and char_length(coalesce(message, '')) <= 1000
  and char_length(coalesce(contact, '')) <= 200
  and char_length(coalesce(user_agent, '')) <= 500
  and (rating is null or rating between 1 and 5)
  and (results_logical is null or results_logical in ('ja', 'nee', 'twijfel'))
);

create index if not exists feedback_created_at_idx on public.feedback (created_at desc);
