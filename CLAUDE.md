# Locked In — Conventions

## TypeScript: never use `interface`

Always use `type` aliases. Do not use `interface` declarations anywhere in this
codebase.

- `type Foo = { ... };` instead of `interface Foo { ... }`
- For extension, use intersection: `type Foo = Bar & { ... };` instead of
  `interface Foo extends Bar { ... }`

**One exception:** `src/vite-env.d.ts` uses `interface ImportMetaEnv` and
`interface ImportMeta` because Vite's ambient typings rely on declaration
merging — `type` aliases cannot merge with the library-defined `ImportMeta`
interface. Do not touch those.
