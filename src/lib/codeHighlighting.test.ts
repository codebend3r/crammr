import type { Element, Root } from "hast";
import { describe, expect, it } from "vitest";
import { codeText, rehypeInlineHighlight } from "@/lib/codeHighlighting";

function fixture({ source, block = false }: { source: string; block?: boolean }) {
  const code: Element = {
    type: "element",
    tagName: "code",
    properties: {},
    children: [{ type: "text", value: source }],
  };
  const tree: Root = {
    type: "root",
    children: [{ type: "element", tagName: block ? "pre" : "p", properties: {}, children: [code] }],
  };
  return { code, tree };
}

describe("inline syntax highlighting", () => {
  it.each([
    '"<script>alert(1)</script>"',
    "`Hello, ${name}!`",
    "const missing = ; // intentional syntax error",
    "foo(1, 'two') + 3",
  ])("preserves source text exactly: %s", (source) => {
    const { tree, code } = fixture({ source });
    rehypeInlineHighlight({ language: "javascript" })(tree);
    expect(codeText({ node: code })).toBe(source);
    expect(code.properties.className).toContain("hljs");
  });

  it("leaves block highlighting to the block plugin", () => {
    const { tree, code } = fixture({ source: "const n = 1;", block: true });
    rehypeInlineHighlight({ language: "javascript" })(tree);
    expect(code.properties.className).toBeUndefined();
  });

  it("does not guess a language for short inline expressions", () => {
    const { tree, code } = fixture({ source: "name" });
    rehypeInlineHighlight({})(tree);
    expect(code.children).toEqual([{ type: "text", value: "name" }]);
    expect(code.properties.className).toBeUndefined();
  });
});
