-- The RLS policy below remains the row-level gate; this grants the table
-- permission required for an authenticated user to read their own admin row.
grant select on public.admins to authenticated;
