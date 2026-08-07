# crammr — Conventions

## Workflow

- Do not commit anything until I tell you to. Finishing a change is not permission to commit it.
- Do not push anything until I tell you to. Once I have told you to commit on a branch that already tracks a remote, push it in the same step — don't ask again.
- Do not merge anything until I tell you to.
- Do not create a PR until I tell you to.

## Branching

- Do not create a branch until I tell you to.
- Branch names are flat. Never put a branch in a folder — no `feature/`, `fix/`, `bug/`, or any other prefix folder, and no slashes anywhere in the name.
- Branch names are kebab-case and 1 to 5 words, describing what the branch is for: `fixed-unit-tests`, `refactored-component`,

## Typescript

- Use type guards wherever possible.
- Never use `any` types; prefer type narrowing or type guards
- Never under any circumstance cast types and never double cast: `as any as string`
- If type can't be inferred and type narrowing is not an option, use `unknown` types

## CSS

- Use SCSS modules (`*.module.scss`) for component styles
- Import `*.module.scss` through the `@/` alias, never a relative path. The `react-ts-css` editor extension flags aliased imports as unresolved — that is a tooling bug to fix in tooling, not a reason to relativize the import
- Only use global stylesheets (`styles/globals.scss`) for design tokens and true typographic primitives
- Use a container driven approach: the container defines the child's available width and height, padding and spacing between children, the children only care about their content. Moving a child to a different container may lay it out differently, because the container specifies the layout.
- Prefer CSS display grid for layout, with the gap property for spacing between grid items; avoid margins for spacing at all cost. This includes prose: a rendered-markdown container is a grid too — element margins stay zeroed and gap sets the rhythm between blocks.
- Use grid when the container defines the tracks; use flex for one-dimensional, content-sized runs — toolbars, inline rows, baseline alignment.
- Place grid children with named `grid-template-areas` and `grid-area: <name>`. Never use positional line spans like `grid-area: 1 / -1`
- Avoid plain divs, meaning divs with no class or id defined
- Always use token values from `styles/globals.scss` when defining font sizes, colors, and other design tokens like padding, margin, gap, and border radius

## Code style

- Prefer `reduce` over `for` loops when possible. Never use `for/in` or `for/of` loops; reach for `Array.prototype` methods (`map`, `filter`, `reduce`, `flatMap`, etc.) when the value is an array.
- Prefer double-bang (`!!value`) for boolean conversion.
- Prefer optional chaining (`?.`). When optional chaining is used, ALWAYS pair it with nullish coalescing (`??`) to supply a fallback.
- Prefer a single configurable object parameter over multiple positional parameters so argument order doesn't matter. Don't: `doSomething(foo, bar, hello)`. Do: `doSomething({ foo, bar, hello })`.
- Don't write comments that restate what the code already says. Comment only a non-obvious _why_ — a workaround, a constraint, a gotcha.
