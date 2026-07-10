# Module Kind Property Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a `kind` property to every learning module (DB column + TypeScript type) classifying its domain, so future UI work can format kinds differently.

**Architecture:** A new re-runnable migration `022_module_kind.sql` adds `modules.kind` with a check constraint and backfills all 38 existing modules. `src/lib/types.ts` gains a `ModuleKind` union and `Module.kind`. Metadata only — no rendering changes.

**Tech Stack:** Supabase (Postgres) migrations applied via `bun run db:apply` (psql), TypeScript, Bun.

## Global Constraints

- Never use `interface`; `type` aliases only (repo `CLAUDE.md`)
- Prefer `const`; no `let`/`var` unless materially necessary (repo `CLAUDE.md`)
- Commit messages: `CRMR:` prefix, terse `-` bullets, backticked identifiers, zero AI attribution (crammr-commit-format skill)
- Kind vocabulary (spec): `coding`, `human-language`, `test-prep`, `driving`, `other`
- Column name is `kind` — `type` is already taken by `static | dynamic`
- Note on TDD: this change has no runtime TS surface (a type-only edit) and no app logic; the test cycle is the migration's SQL count verification plus `tsc` and the existing `bun test` suite. No new unit tests (YAGNI).

---

### Task 1: Migration `022_module_kind.sql`

**Files:**
- Create: `supabase/migrations/022_module_kind.sql`

**Interfaces:**
- Consumes: existing `modules` table (`001_init.sql`), module slugs seeded by `002_seed_g1.sql`, `003`/`004`, `006_seed_more_modules.sql`
- Produces: `modules.kind text not null default 'other'` with check constraint `modules_kind_check`; Task 2's `ModuleKind` union must match the constraint's five values exactly

- [ ] **Step 1: Write the migration**

```sql
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
```

- [ ] **Step 2: Apply the migration**

Run: `bun run db:apply supabase/migrations/022_module_kind.sql`
Expected: `-> …/022_module_kind.sql` then `Applied 1 migration.` with no psql errors. (Requires `SUPABASE_DB_URL` in `.env.local`; falls back to Supabase MCP `apply_migration` if `psql` is unavailable.)

- [ ] **Step 3: Verify backfill counts**

Run (with `SUPABASE_DB_URL` loaded):
```bash
psql "$SUPABASE_DB_URL" -c "select kind, count(*) from modules group by kind order by kind;"
```
Expected output — exactly four rows, no `other`:
```
      kind      | count
----------------+-------
 coding         |    30
 driving        |     1
 human-language |     6
 test-prep      |     1
```

- [ ] **Step 4: Re-run the migration to prove idempotence**

Run: `bun run db:apply supabase/migrations/022_module_kind.sql`
Expected: succeeds again with no errors; count query unchanged.

### Task 2: `ModuleKind` in `src/lib/types.ts` + commit

**Files:**
- Modify: `src/lib/types.ts:1-13`

**Interfaces:**
- Consumes: `modules.kind` column from Task 1 (five values, exact strings)
- Produces: `export type ModuleKind = "coding" | "human-language" | "test-prep" | "driving" | "other";` and `Module.kind: ModuleKind` — future layout work branches on `module.kind`

- [ ] **Step 1: Add the type**

In `src/lib/types.ts`, below `ModuleType`, add:

```ts
export type ModuleKind =
  | "coding"
  | "human-language"
  | "test-prep"
  | "driving"
  | "other";
```

and in `Module`, after `type: ModuleType;`, add:

```ts
  kind: ModuleKind;
```

- [ ] **Step 2: Typecheck and run existing tests**

Run: `bunx tsc --noEmit -p tsconfig.app.json && bun test`
Expected: tsc silent; all existing tests pass (`moduleCategories`, `role`, `sampling`).

- [ ] **Step 3: Commit**

```bash
git add supabase/migrations/022_module_kind.sql src/lib/types.ts
git commit -m "$(cat <<'EOF'
CRMR: add `kind` property to learning modules

- `022_module_kind.sql` adds `modules.kind` (`coding`/`human-language`/`test-prep`/`driving`/`other`) with check constraint + backfill, re-runnable
- `ModuleKind` union + `Module.kind` in `types.ts`
EOF
)"
```
Expected: pre-commit `tsc` + `eslint` pass; commit created.
