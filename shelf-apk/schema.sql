-- Run once in Supabase: SQL Editor > New query > paste > Run
create table if not exists shelf_clients(client_id text primary key, name text not null);
create table if not exists shelf_parcels(
  track text primary key, shelf text not null, client_id text, client_name text,
  added_at timestamptz default now(), added_by text);
create table if not exists shelf_log(id bigserial primary key, at timestamptz default now(), who text, text text);
alter table shelf_clients enable row level security;
alter table shelf_parcels enable row level security;
alter table shelf_log enable row level security;
-- only logged-in staff (accounts you create) can read and write
create policy "staff all" on shelf_clients for all to authenticated using (true) with check (true);
create policy "staff all" on shelf_parcels for all to authenticated using (true) with check (true);
create policy "staff all" on shelf_log for all to authenticated using (true) with check (true);
