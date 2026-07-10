# Module kind property — design

**Date:** 2026-07-09
**Status:** Approved

## Problem

Every learning module should carry a property saying what kind of learning
module it is, so that future UI work can format different kinds differently
(e.g. coding-language modules get a code-oriented quiz layout). Today the only
module-level classification is:

- `modules.type` (`static | dynamic`) — session-sampling behavior, not
  content kind. The name `type` is therefore taken.
- `src/lib/moduleCategories.ts` — a hand-maintained client-side slug → category
  map used only to group cards on the All Modules page.

## Decision

Add a `kind` column to the `modules` table (approach A: DB column, single
source of truth, declared at seed time). Metadata only for now — no rendering
or layout changes in this work.

### Kind vocabulary

One kind per domain:

| kind             | modules                                                        |
| ---------------- | -------------------------------------------------------------- |
| `coding`         | the 30 programming-language modules (`javascript-1` … `rust-3`) |
| `human-language` | `english`, `spanish`, `french`, `japanese`, `italian`, `portuguese` |
| `test-prep`      | `real-estate`                                                  |
| `driving`        | `g1`                                                           |
| `other`          | fallback default for future modules                            |

## Data model

New migration `supabase/migrations/022_module_kind.sql`:

1. `alter table modules add column if not exists kind text not null default 'other';`
2. Drop-if-exists then re-add check constraint
   `modules_kind_check`: `kind in ('coding', 'human-language', 'test-prep', 'driving', 'other')`.
3. Backfill `update` statements by slug per the table above.

Re-runnability:

- Standalone: `if not exists` + idempotent updates make 022 safe to re-run.
- Full chain: `001_init.sql` drops/recreates `modules` without the column,
  `002`/`006` insert module rows, then `022` adds the column and backfills.
- The `'other'` default lets future seed migrations insert modules without
  naming a kind; the check constraint keeps values valid.

Applied via `bun run db:apply supabase/migrations/022_module_kind.sql` (or the
full `bun run db:apply`).

## TypeScript

In `src/lib/types.ts`:

```ts
export type ModuleKind =
  | "coding"
  | "human-language"
  | "test-prep"
  | "driving"
  | "other";
```

`Module` gains `kind: ModuleKind`. Queries already `select("*")` on modules, so
no query changes. `moduleCategories.ts` and the All Modules grouping stay
untouched; future layout work branches on `module.kind`.

## Out of scope

- Any rendering/layout changes keyed off `kind`.
- Replacing or consolidating `moduleCategories.ts`.
- Changes to `request_categories` (module-request feature).

## Verification

- Apply the migration, then confirm per-kind counts:
  30 `coding`, 6 `human-language`, 1 `test-prep`, 1 `driving`, 0 `other`.
- `tsc` passes and existing tests (`bun test`) pass.
