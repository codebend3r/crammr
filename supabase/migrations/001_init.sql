-- 001_init.sql
-- Locked In v1: tables, indexes, RLS policies

create extension if not exists "pgcrypto";

-- ───────────────────────────────────────────────────────────── modules
create table modules (
  id              uuid primary key default gen_random_uuid(),
  slug            text not null unique,
  name            text not null,
  description     text not null default '',
  type            text not null check (type in ('static', 'dynamic')),
  total_questions int  not null default 0,
  created_at      timestamptz not null default now()
);

-- ─────────────────────────────────────────────────────────── questions
create table questions (
  id              uuid primary key default gen_random_uuid(),
  module_id       uuid not null references modules(id) on delete cascade,
  category        text,
  prompt          text not null,
  explanation     text,
  flashcard_back  text not null,
  recap_answer    text not null,
  order_index     int  not null default 0,
  created_at      timestamptz not null default now()
);

create index questions_module_idx on questions(module_id);

-- ──────────────────────────────────────────────────── question_choices
create table question_choices (
  id           uuid primary key default gen_random_uuid(),
  question_id  uuid not null references questions(id) on delete cascade,
  label        text not null,
  is_correct   bool not null default false,
  order_index  int  not null default 0
);

create index question_choices_question_idx on question_choices(question_id);

-- ──────────────────────────────────────────────────────────── sessions
create table sessions (
  id            uuid primary key default gen_random_uuid(),
  user_id       uuid not null references auth.users(id) on delete cascade,
  module_id     uuid not null references modules(id),
  mode          text not null check (mode in ('multiple_choice', 'flashcards', 'recap')),
  session_size  int  not null,
  started_at    timestamptz not null default now(),
  completed_at  timestamptz,
  score         int
);

create index sessions_user_module_idx on sessions(user_id, module_id);
create index sessions_user_completed_idx on sessions(user_id, completed_at desc);

-- ───────────────────────────────────────────────────── session_answers
create table session_answers (
  id           uuid primary key default gen_random_uuid(),
  session_id   uuid not null references sessions(id) on delete cascade,
  question_id  uuid not null references questions(id),
  choice_id    uuid references question_choices(id),
  self_grade   bool,
  is_correct   bool not null,
  answered_at  timestamptz not null default now()
);

create index session_answers_session_idx on session_answers(session_id);

-- ──────────────────────────────────────────────────────── RLS policies
alter table modules           enable row level security;
alter table questions         enable row level security;
alter table question_choices  enable row level security;
alter table sessions          enable row level security;
alter table session_answers   enable row level security;

-- Read-only shared content for any authenticated user
create policy "read modules"          on modules
  for select to authenticated using (true);

create policy "read questions"        on questions
  for select to authenticated using (true);

create policy "read question_choices" on question_choices
  for select to authenticated using (true);

-- Sessions: full ownership by the row's user_id
create policy "own sessions select"   on sessions
  for select to authenticated using (auth.uid() = user_id);

create policy "own sessions insert"   on sessions
  for insert to authenticated with check (auth.uid() = user_id);

create policy "own sessions update"   on sessions
  for update to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "own sessions delete"   on sessions
  for delete to authenticated using (auth.uid() = user_id);

-- session_answers: ownership inferred via parent session
create policy "own session_answers select" on session_answers
  for select to authenticated using (
    exists (select 1 from sessions s
            where s.id = session_answers.session_id
              and s.user_id = auth.uid())
  );

create policy "own session_answers insert" on session_answers
  for insert to authenticated with check (
    exists (select 1 from sessions s
            where s.id = session_answers.session_id
              and s.user_id = auth.uid())
  );

create policy "own session_answers update" on session_answers
  for update to authenticated
  using (
    exists (select 1 from sessions s
            where s.id = session_answers.session_id
              and s.user_id = auth.uid())
  )
  with check (
    exists (select 1 from sessions s
            where s.id = session_answers.session_id
              and s.user_id = auth.uid())
  );

create policy "own session_answers delete" on session_answers
  for delete to authenticated using (
    exists (select 1 from sessions s
            where s.id = session_answers.session_id
              and s.user_id = auth.uid())
  );
