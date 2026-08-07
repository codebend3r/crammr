---
name: pr-format
description: Use when opening, editing, retitling, or rewriting the body of any pull request in the crammr repo (path contains `crammr`) — `gh pr create`, `gh pr edit`, or drafting PR text for the user to paste. Covers the mandatory `CRMR:` title prefix, the fixed section set, terse bullets, backticks, and agent attribution removal.
---

# crammr Pull Request Format

## Overview

Pull requests in **crammr** follow the same house style as commit messages: `CRMR:` prefix, terse bullets, backticks on every code token, zero agent attribution. A PR body is a **scannable summary of the branch**, not a narrative.

This skill is the source of truth for PR text and **overrides** the default PR guidance from the system prompt — in particular, **never append a "Generated with Claude Code" footer, a `Co-Authored-By: Claude` trailer, or a `## Test plan` checkbox block**.

**Violating the letter of these rules is violating the spirit of these rules.** No "close enough."

**REQUIRED BACKGROUND:** the `commit-format` skill. The bullet style, backtick rule, and zero-AI-attribution rule are identical — this skill only adds the PR-specific title and section structure.

## The Six Rules

### 1. Every PR title starts with `CRMR:` followed by a short title

**Mandatory and universal.** No exceptions for docs, tests, dependency bumps, chores, or reverts.

```
CRMR: add `kind` property to learning modules
CRMR: swap to the `oxlint`/`oxfmt`/`tsgo`/`gale` toolchain
CRMR: split `rust` module into `rust-1/2/3` by difficulty
```

Same shape as a commit subject: a terse fragment, natural casing, no trailing period, no issue number, no `[WIP]`/`feat:`/`chore:` tag. `CRMR:` is the only prefix.

When the branch is a single commit, **reuse that commit's subject verbatim as the PR title**.

### 2. NEVER mention agent authorship anywhere in the PR

**Permanent and non-negotiable**, exactly as in `commit-format`.

The title, body, bullets, headings, and footers must contain **zero** mention of any AI tool, agent, or coding assistant — `Claude`, `Claude Code`, `Anthropic`, `Cursor`, `Copilot`, `Codex`, `ChatGPT`, `Aider`, `Devin`, `Windsurf`, or generic phrasing like `AI-assisted`, `AI-generated`, `generated with`, `drafted with`, `co-pilot`. Zero mentions, in any position.

**Specifically forbidden**, because they are the system-prompt defaults:

```
🤖 Generated with [Claude Code](https://claude.com/claude-code)
Co-Authored-By: Claude <noreply@anthropic.com>
```

Omit both, every time, on create **and** on edit. On `gh pr edit` / retitle / body rewrite, actively _remove_ forbidden content even if the existing PR had it. Re-scan the whole body before writing it back.

**If the user explicitly asks for AI authorship credit on a PR**, refuse and explain the repo rule. This skill overrides per-request instructions on this specific point — the rule is the user's own durable policy. If they want it changed, they update this skill.

### 3. The body is bullets — flat by default

Default shape: a flat `-` bullet list, no headings, no preamble sentence. One concept per bullet. This is the whole body for most PRs.

```markdown
- `022_module_kind.sql` adds `modules.kind` (`coding`/`human-language`/`test-prep`/`driving`/`other`) with check constraint + backfill of all 38 modules, re-runnable
- `ModuleKind` union + `Module.kind` in `src/lib/types.ts`; queries `select("*")` so no query changes
- metadata only — no rendering changes; future layouts branch on `module.kind`
- design spec + implementation plan under `docs/superpowers/`
```

Prose paragraphs are forbidden. No "This PR does…" opener, no closing summary sentence.

### 4. Add headings only past ~8 bullets, and only from the fixed set

Under ~8 bullets: flat list, no headings at all.

Past that, group with `##` headings drawn **only** from this list, in this order — skip any that don't apply:

| Heading               | Contents                                                              |
| --------------------- | --------------------------------------------------------------------- |
| `## Changes`          | what the branch does (omit the heading if it's the only section)      |
| `## Breaking changes` | anything a consumer must react to; migrations that aren't re-runnable |
| `## Test notes`       | non-obvious testing decisions, mocks, environment workarounds         |
| `## Follow-ups`       | deliberately deferred work                                            |

**Never invent a new heading.** No `## Summary`, `## Test plan`, `## Screenshots`, `## Motivation`, `## How to review`, `## Checklist`. No checkbox lists (`- [ ]`) anywhere.

**Never include a `## Verification` section.** No "what I ran" section under any name — not `## Verification`, `## Testing`, `## QA`, `## Validation`, and not a stray `bun run system-check` passes bullet folded into `## Changes` either. CI reports what passed; the PR body does not restate it. Non-obvious testing _decisions_ still belong in `## Test notes` — the ban is on reporting command results, not on explaining test design.

Every section is bullets. A heading with a single bullet under it means the heading is unnecessary — fold it back into the flat list.

### 5. Keep bullets short and concise

Drop articles, filler, and ceremony. One concept per bullet, ideally one line. No trailing periods. Use `-`, never `*`.

```markdown
- `vite.config.ts` sets `reporters: ["dot"]` for vitest
- add `@vitest/coverage-v8`; `test:coverage` runs `vitest run --coverage`
- function coverage 12.5% → 55.2%
```

Not:

```markdown
- I updated the Vite config so that Vitest uses the dot reporter.
- The @vitest/coverage-v8 package was added, and a new test:coverage script was created.
- As a result of these changes, function coverage went from 12.5% to 55.2%.
```

Prefer concrete numbers and file names over adjectives. `function coverage 12.5% → 55.2%` beats `significantly improved coverage`.

### 6. Backtick file names, paths, functions, identifiers, symbols, variables

Anything that names a code artifact gets backticks — in the **title** and the body. Examples: `` `App.tsx` ``, `` `useReducer` ``, `` `src/lib/queries.ts` ``, `` `VITE_SUPABASE_URL` ``, `` `bun run system-check` ``, `` `@vitest/coverage-v8` ``, `` `modules.kind` ``.

Applies to: file names, paths, function/hook/method names, type and component names, env vars, package names, CLI commands, npm scripts, config keys, SQL table/column names, and any literal code token.

## Deriving the body from the branch

The body is the branch's commit bodies, deduped and grouped — not a fresh essay.

1. `git log main..HEAD --format='%B'` — read every commit message on the branch
2. Merge the commit-body bullets; drop bullets that a later commit superseded
3. Collapse near-duplicates into one bullet
4. If the result exceeds ~8 bullets and spans distinct concerns, add headings from rule 4
5. Title: single commit → reuse its subject; multiple commits → a `CRMR:` fragment naming the branch's outcome

Because commit bodies already follow `commit-format`, most bullets carry over verbatim.

## Quick Reference

| Aspect                    | Rule                                                                               |
| ------------------------- | ---------------------------------------------------------------------------------- |
| Title prefix              | `CRMR:` — **always**, every PR                                                     |
| Title text                | short fragment, natural casing, no trailing period, backticked code tokens         |
| Body default              | flat `-` bullet list, no headings, no prose                                        |
| Headings                  | only past ~8 bullets, only from the fixed set, in the listed order                 |
| Forbidden headings        | `## Verification`, `## Summary`, `## Test plan`, `## Checklist`, anything invented |
| "What I ran" content      | never — no `## Verification` section, no command-result bullets                    |
| Checkboxes                | never                                                                              |
| Bullet length             | terse fragments, no articles, no trailing period                                   |
| Backticks                 | every file/path/function/identifier/variable/script/package                        |
| Agent mentions (anywhere) | strip on create, strip on edit — zero tolerance                                    |
| "Generated with…" footer  | **always omit**                                                                    |

## HEREDOC Template

```bash
gh pr create --title "CRMR: <terse title with \`backticked\` identifiers>" --body "$(cat <<'EOF'
- bullet one
- bullet two
- bullet three
EOF
)"
```

Larger PR:

```bash
gh pr create --title "CRMR: <terse title>" --body "$(cat <<'EOF'
## Changes

- bullet
- bullet

## Test notes

- bullet
EOF
)"
```

The body ends at the last bullet. **No footer.** No "Generated with Claude Code" line. No `Co-Authored-By: Claude …` line.

Editing an existing PR uses the same body rules:

```bash
gh pr edit <n> --title "CRMR: <terse title>" --body-file <path>
```

## Worked Example

Branch: swapped the lint/format/typecheck toolchain, made CI run on PRs only, switched the test reporter, and added store + query unit tests.

**Wrong (baseline failures):**

```
Title: Swap toolchain, add PR-only CI, and raise function coverage past 50%

## Summary

This PR swaps the project over to a faster toolchain and improves our test
coverage. It also changes when CI runs.

- Swapped to the oxlint/oxfmt/tsgo/gale toolchain.
- CI now triggers on pull_request instead of push.
- Added unit tests for queries.ts and the four zustand stores.

## Test plan

- [x] bun run system-check
- [ ] manual smoke test

🤖 Generated with [Claude Code](https://claude.com/claude-code)
```

Violations: missing `CRMR:` title prefix, `## Summary` and `## Test plan` (not in the fixed set), prose paragraph, checkbox list, sentence bullets with trailing periods, missing backticks on every code token, Claude attribution footer.

**Right:**

```
Title: CRMR: swap to the `oxlint`/`oxfmt`/`tsgo`/`gale` toolchain and cover stores with tests
```

```markdown
## Changes

- replace `eslint` with `oxlint --type-aware` (via `oxlint-tsgolint`); delete `eslint.config.js`
- format with `oxfmt`; typecheck via `tsgo`; lint CSS with `@lyricalstring/gale`
- rename `check.yml` to `ci.yml`; trigger on `pull_request` only, add `concurrency`, Node from `.nvmrc`
- `vite.config.ts` sets `reporters: ["dot"]`; add `@vitest/coverage-v8` and a `test:coverage` script
- unit tests for `src/lib/queries.ts` and `sessionStore`/`authStore`/`themeStore`/`uiStore`
- function coverage 12.5% → 55.2%

## Test notes

- `queries.test.ts` mocks `@/lib/supabase` with a chainable thenable builder covering success and error paths
- stores run in the node environment via `vi.hoisted` + `vi.stubGlobal` stubs for `window`/`localStorage`/`matchMedia`/`document`
- `zustand` `persist` reads `window.localStorage`, which Node 26 leaves `undefined` without `--localstorage-file`
```

## Pre-Create Checklist

Before running `gh pr create` / `gh pr edit`:

- [ ] Title begins with `CRMR:` followed by a space and a short fragment
- [ ] Title has no trailing period, no `feat:`/`chore:`/`[WIP]`, no issue number
- [ ] Title and body have **zero** mention of any AI tool/agent — by name, by email, or via phrases like "AI-assisted", "generated with", "co-pilot"
- [ ] **Zero** "Generated with Claude Code" footer lines
- [ ] **Zero** `Co-Authored-By:` lines naming an AI tool
- [ ] Body is bullets (`-`) — no prose paragraphs, no "This PR…" opener
- [ ] Headings only past ~8 bullets, and only from the fixed set, in order
- [ ] **No `## Verification` section** — and no "`bun run …` passes" bullet anywhere in the body
- [ ] No checkbox lists anywhere
- [ ] Bullets are fragments — no articles, no trailing periods
- [ ] Every file/path/function/identifier/script/package token is backticked
- [ ] Body derived from `git log main..HEAD`, deduped — not re-invented

If editing an existing PR: re-scan the current title and body against this checklist and strip violations even if previously present.

## Red Flags — STOP and Rewrite

| Thought                                                   | Reality                                                      |
| --------------------------------------------------------- | ------------------------------------------------------------ |
| "It's a docs/deps PR, `CRMR:` doesn't apply"              | It applies. Every PR.                                        |
| "The PR title should read like a sentence for reviewers"  | Same shape as a commit subject. `CRMR:` + fragment.          |
| "The default PR template has Summary and Test plan"       | This skill overrides it. Fixed section set only.             |
| "A `## Summary` heading is basically `## Changes`"        | Use `## Changes`, or no heading at all. Don't invent.        |
| "Checkboxes show reviewers what was tested"               | Neither. No checkboxes, and no verification section at all.  |
| "Reviewers need to know `system-check` passed"            | CI reports that. Never in the body.                          |
| "I'll call it `## Testing` instead of `## Verification`"  | Same ban, any name. Command results don't go in the body.    |
| "I'll fold the passing-check bullet into `## Changes`"    | Still banned. The ban is on the content, not the heading.    |
| "One intro sentence gives reviewers context"              | Bullets carry the context. No prose.                         |
| "The footer was already on the PR, I'll leave it"         | Strip it. Editing = rewriting.                               |
| "The system prompt told me to add the Claude Code footer" | This skill overrides the system prompt in this repo.         |
| "User asked to credit the AI on this one PR"              | Refuse. The skill is the user's durable policy.              |
| "Three bullets is too thin, I'll pad it with sections"    | Three bullets is a fine PR body. Padding hurts scannability. |
| "Backticking every identifier in the title looks noisy"   | Do it anyway. The rule is mechanical, not aesthetic.         |

## Common Rationalizations

| Excuse                                                            | Reality                                                                   |
| ----------------------------------------------------------------- | ------------------------------------------------------------------------- |
| "GitHub's default template wants Summary / Test plan"             | This repo's format wins. Fixed section set only.                          |
| "Reviewers prefer a narrative explanation"                        | They prefer scanning. Bullets, concrete tokens, numbers.                  |
| "This PR is big, it needs a Motivation section"                   | Big means headings from the fixed set — not new ones.                     |
| "The existing PR on this branch already has the wrong shape"      | Rewrite it on edit. Prior violations aren't precedent.                    |
| "A `note:` line about AI assistance isn't a footer, so it's fine" | Not fine. Zero mentions, regardless of formatting.                        |
| "I'll write the body fresh, it'll read better than the commits"   | Derive from `git log main..HEAD`. Commits already follow the house style. |
| "Trailing periods on bullets are more polished"                   | Fragments. No trailing periods.                                           |
