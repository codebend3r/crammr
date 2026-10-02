import type { Element, ElementContent, Root, Text } from "hast";
import { createLowlight } from "lowlight";
import { HIGHLIGHT_OPTIONS, getCodeLanguage } from "@/lib/codeLanguages";

const inlineHighlighter = createLowlight(HIGHLIGHT_OPTIONS.languages ?? {});
inlineHighlighter.registerAlias(HIGHLIGHT_OPTIONS.aliases ?? {});

export function codeText({ node }: { node: ElementContent }): string {
  if (node.type === "text") return node.value;
  if (node.type === "element")
    return node.children.map((child) => codeText({ node: child })).join("");
  return "";
}

function highlightInline({ node, language }: { node: Root | Element; language: string }) {
  node.children.forEach((child) => {
    if (child.type !== "element") return;
    if (child.tagName === "code" && !(node.type === "element" && node.tagName === "pre")) {
      const source = codeText({ node: child });
      const result = inlineHighlighter.highlight(language, source);
      child.children = result.children.filter(
        (item): item is Element | Text => item.type === "element" || item.type === "text",
      );
      child.properties.className = ["hljs", `language-${language}`];
      return;
    }
    highlightInline({ node: child, language });
  });
}

export function rehypeInlineHighlight({ language }: { language?: string }) {
  const definition = getCodeLanguage({ language: language ?? "" });
  return (tree: Root) => {
    // Inline expressions are too short to guess reliably; only use the quiz's known language.
    if (definition) highlightInline({ node: tree, language: definition.id });
  };
}
