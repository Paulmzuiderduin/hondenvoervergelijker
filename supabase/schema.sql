create extension if not exists pgcrypto;

create type public.food_type as enum ('kibble', 'raw', 'wet');
create type public.ingredient_certainty as enum ('confirmed', 'uncertain');

create table public.admins (
  user_id uuid primary key references auth.users(id) on delete cascade,
  created_at timestamptz not null default now()
);

create table public.products (
  id uuid primary key default gen_random_uuid(),
  brand text not null check (char_length(trim(brand)) > 0),
  name text not null check (char_length(trim(name)) > 0),
  food_type public.food_type not null,
  package_size text,
  gtin text unique check (gtin is null or gtin ~ '^[0-9]{8,14}$'),
  source_url text,
  last_checked_at date not null,
  published boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique nulls not distinct (brand, name, package_size)
);

create table public.recipe_versions (
  id uuid primary key default gen_random_uuid(),
  product_id uuid not null references public.products(id) on delete cascade,
  ingredients_text text not null check (char_length(trim(ingredients_text)) > 0),
  has_uncertain_ingredients boolean not null default false,
  source_changed_at date,
  is_current boolean not null default true,
  created_at timestamptz not null default now()
);
create unique index one_current_recipe_per_product on public.recipe_versions(product_id) where is_current;

create table public.recipe_ingredients (
  id uuid primary key default gen_random_uuid(),
  recipe_version_id uuid not null references public.recipe_versions(id) on delete cascade,
  allergen_key text not null,
  certainty public.ingredient_certainty not null default 'confirmed',
  unique(recipe_version_id, allergen_key)
);

create table public.import_staging (
  id uuid primary key default gen_random_uuid(),
  source_name text not null,
  external_id text,
  gtin text,
  raw_ingredients_text text,
  source_changed_at date,
  payload jsonb not null default '{}'::jsonb,
  status text not null default 'pending' check (status in ('pending', 'accepted', 'rejected')),
  created_at timestamptz not null default now()
);

create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path = public as $$
  select exists (select 1 from public.admins where user_id = (select auth.uid()));
$$;

create or replace function public.set_updated_at()
returns trigger language plpgsql set search_path = public as $$ begin new.updated_at = now(); return new; end; $$;
create trigger products_updated_at before update on public.products for each row execute function public.set_updated_at();

alter table public.admins enable row level security;
alter table public.products enable row level security;
alter table public.recipe_versions enable row level security;
alter table public.recipe_ingredients enable row level security;
alter table public.import_staging enable row level security;

create policy "admins read own record" on public.admins for select to authenticated using (user_id = (select auth.uid()));
create policy "public reads published products" on public.products for select to anon, authenticated using (published or (select public.is_admin()));
create policy "admins manage products" on public.products for all to authenticated using ((select public.is_admin())) with check ((select public.is_admin()));
create policy "public reads visible recipes" on public.recipe_versions for select to anon, authenticated using (
  (select public.is_admin()) or (is_current and exists (select 1 from public.products p where p.id = product_id and p.published))
);
create policy "admins manage recipes" on public.recipe_versions for all to authenticated using ((select public.is_admin())) with check ((select public.is_admin()));
create policy "public reads visible ingredients" on public.recipe_ingredients for select to anon, authenticated using (
  (select public.is_admin()) or exists (select 1 from public.recipe_versions rv join public.products p on p.id = rv.product_id where rv.id = recipe_version_id and rv.is_current and p.published)
);
create policy "admins manage recipe ingredients" on public.recipe_ingredients for all to authenticated using ((select public.is_admin())) with check ((select public.is_admin()));
create policy "admins manage import staging" on public.import_staging for all to authenticated using ((select public.is_admin())) with check ((select public.is_admin()));

revoke all on function public.is_admin() from public;
grant execute on function public.is_admin() to anon, authenticated;
grant select on public.admins to authenticated;
grant select on public.products, public.recipe_versions, public.recipe_ingredients to anon, authenticated;
grant insert, update, delete on public.products, public.recipe_versions, public.recipe_ingredients, public.import_staging to authenticated;
