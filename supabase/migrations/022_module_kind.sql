-- 022_module_kind.sql
-- Add a `kind` column to modules classifying each learning module's domain,
-- so the client can format kinds differently (e.g. coding modules).
--
-- Re-runnable: guarded alters + idempotent updates.

alter table modules add column if not exists kind text not null default 'other';

alter table modules drop constraint if exists modules_kind_check;
alter table modules add constraint modules_kind_check
  check (kind in ('coding', 'human-language', 'test-prep', 'driving', 'other'));

update modules set kind = 'coding' where slug in (
  'javascript-1', 'javascript-2', 'javascript-3',
  'typescript-1', 'typescript-2', 'typescript-3',
  'python-1',     'python-2',     'python-3',
  'c-1',          'c-2',          'c-3',
  'cpp-1',        'cpp-2',        'cpp-3',
  'java-1',       'java-2',       'java-3',
  'csharp-1',     'csharp-2',     'csharp-3',
  'sql-1',        'sql-2',        'sql-3',
  'go-1',         'go-2',         'go-3',
  'rust-1',       'rust-2',       'rust-3'
);

update modules set kind = 'human-language' where slug in (
  'english', 'spanish', 'french', 'japanese', 'italian', 'portuguese'
);

update modules set kind = 'test-prep' where slug = 'real-estate';

update modules set kind = 'driving'   where slug = 'g1';
