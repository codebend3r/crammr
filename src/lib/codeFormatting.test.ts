import { describe, expect, it } from "vitest";
import { tokenizer } from "acorn";
import { formatJavaScript } from "@/lib/codeFormatting";

function tokens({ source }: { source: string }): Array<{ type: string; value: unknown }> {
  return Array.from(tokenizer(source, { ecmaVersion: "latest" }), (token) => ({
    type: token.type.label,
    value: token.value,
  }));
}

describe("formatJavaScript", () => {
  it("lays out the seeded Level 2 closure without rewriting its tokens", () => {
    const source = "function makeCounter() { let n = 0; return () => ++n; }";
    const result = formatJavaScript({ source });
    expect(result).toEqual({
      source: "function makeCounter() {\n  let n = 0;\n  return () => ++n;\n}",
      block: true,
    });
    expect(tokens(result)).toEqual(tokens({ source }));
  });

  it("keeps for-loop headers intact and indents the body", () => {
    const source = "for (var i = 0; i < 3; i++) { setTimeout(() => console.log(i), 0); }";
    expect(formatJavaScript({ source }).source).toBe(
      "for (var i = 0; i < 3; i++) {\n  setTimeout(() => console.log(i), 0);\n}",
    );
  });

  it.each([
    'console.log("A"); setTimeout(() => console.log("B"), 0); Promise.resolve().then(() => console.log("C")); console.log("D");',
    'function f() { if (true) { return "{; }"; } else { return /[{};]/.test(";"); } }',
    "function f() { const text = `literal {; } ${1 + 2}`; /* keep this comment */ return text; }",
    "const object = { nested: { value: 1 } }; console.log(object);",
    "async function f() { await Promise.resolve(); return 1; } f();",
    "const f = () => { const x = 1; return () => { return x; }; }; f();",
  ])(
    "preserves tokens in strings, regexes, templates, objects, and nested blocks: %s",
    (source) => {
      const result = formatJavaScript({ source });
      expect(result.block).toBe(true);
      expect(tokens(result)).toEqual(tokens({ source }));
    },
  );

  it.each(["typeof null", "a === b", "[1, 2, 3].map(x => x * 2)", '"3 3 3"', "0 1 2"])(
    "leaves short expressions and outputs inline: %s",
    (source) => expect(formatJavaScript({ source })).toEqual({ source, block: false }),
  );

  it("does not repair intentional syntax errors", () => {
    const source = "const value = ; console.log(value);";
    expect(formatJavaScript({ source })).toEqual({ source, block: false });
  });

  it.each([
    "function f() {\n  return\n  { value: 1 };\n}",
    "let x = 1\r\nx++\r\nconsole.log(x)",
    "const text = `first\nsecond`;\nconsole.log(text);",
  ])("preserves authored newlines, including ASI traps", (source) => {
    expect(formatJavaScript({ source })).toEqual({ source, block: true });
  });
});
