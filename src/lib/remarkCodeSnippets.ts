import type { PhrasingContent, Root, RootContent } from "mdast";
import { formatJavaScript } from "@/lib/codeFormatting";

type Options = { language?: string };
type ParagraphParts = { blocks: RootContent[]; inline: PhrasingContent[] };

function flushInline(parts: ParagraphParts): RootContent[] {
  return parts.inline.length
    ? [...parts.blocks, { type: "paragraph", children: parts.inline }]
    : parts.blocks;
}

export function remarkCodeSnippets({ language }: Options) {
  return (tree: Root) => {
    tree.children = tree.children.flatMap((node): RootContent[] => {
      if (node.type === "code") {
        const lang = node.lang ?? language ?? null;
        const value =
          lang === "javascript" || lang === "js"
            ? formatJavaScript({ source: node.value }).source
            : node.value;
        return [{ ...node, lang, value }];
      }
      if (node.type !== "paragraph" || language !== "javascript") return [node];

      const parts = node.children.reduce<ParagraphParts>(
        (result, child) => {
          if (child.type !== "inlineCode") return { ...result, inline: [...result.inline, child] };
          const formatted = formatJavaScript({ source: child.value });
          if (!formatted.block) return { ...result, inline: [...result.inline, child] };
          return {
            blocks: [
              ...flushInline(result),
              { type: "code", lang: language, value: formatted.source },
            ],
            inline: [],
          };
        },
        { blocks: [], inline: [] },
      );
      return flushInline(parts);
    });
  };
}
