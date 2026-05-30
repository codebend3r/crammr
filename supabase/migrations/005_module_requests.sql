-- 005_module_requests.sql
-- Module request system: categories + user-submitted module requests with RLS

-- Drop existing tables so this migration overwrites them.
drop table if exists module_requests    cascade;
drop table if exists request_categories cascade;

-- ─────────────────────────────────────────────── request_categories
create table request_categories (
  id          uuid primary key default gen_random_uuid(),
  slug        text not null unique,
  name        text not null,
  order_index int  not null default 0,
  created_at  timestamptz not null default now()
);

insert into request_categories (slug, name, order_index) values
  ('programming-languages',  'Programming Languages',         0),
  ('web-development',        'Web Development',               1),
  ('mobile-development',     'Mobile Development',            2),
  ('data-structures',        'Data Structures & Algorithms',  3),
  ('databases',              'Databases',                     4),
  ('devops',                 'DevOps & Infrastructure',       5),
  ('design-ux',              'Design & UX',                   6),
  ('ai-ml',                  'AI & Machine Learning',         7),
  ('mathematics',            'Mathematics',                   8),
  ('science',                'Science',                       9),
  ('languages',              'Languages',                    10),
  ('test-prep',              'Test Preparation',             11),
  ('driving-licensing',      'Driving & Licensing',          12),
  ('general-knowledge',      'General Knowledge',            13),
  ('other',                  'Other',                        14);

-- ───────────────────────────────────────────────── module_requests
create table module_requests (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid not null references auth.users(id) on delete cascade,
  category_id uuid not null references request_categories(id),
  title       text not null,
  description text not null default '',
  goal        text not null default '',
  created_at  timestamptz not null default now()
);

create index module_requests_user_idx     on module_requests(user_id);
create index module_requests_category_idx on module_requests(category_id);
create index module_requests_created_idx  on module_requests(created_at desc);

-- ──────────────────────────────────────────────────────── RLS
alter table request_categories enable row level security;
alter table module_requests    enable row level security;

-- Anyone authenticated can read all categories
create policy "read request_categories" on request_categories
  for select to authenticated using (true);

-- Anyone authenticated can read all module requests
create policy "read module_requests" on module_requests
  for select to authenticated using (true);

-- Authenticated users can insert their own requests
create policy "insert own module_requests" on module_requests
  for insert to authenticated with check (auth.uid() = user_id);

-- Owners can update or delete their own requests
create policy "update own module_requests" on module_requests
  for update to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "delete own module_requests" on module_requests
  for delete to authenticated using (auth.uid() = user_id);
