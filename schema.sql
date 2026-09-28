create extension if not exists pgcrypto;

create table if not exists public.expenses (
  id uuid primary key default gen_random_uuid(),
  spent_at date not null default current_date,
  description text not null,
  category text not null,
  amount numeric(12, 2) not null check (amount > 0),
  created_at timestamptz not null default now()
);

alter table public.expenses enable row level security;

create policy "Allow public read"
on public.expenses
for select
to anon
using (true);

create policy "Allow public insert"
on public.expenses
for insert
to anon
with check (true);

create policy "Allow public delete"
on public.expenses
for delete
to anon
using (true);
