create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path = public as $$
  select (select auth.uid()) is not null
    and exists (select 1 from public.admins where user_id = (select auth.uid()));
$$;

grant select on public.admins to authenticated;
