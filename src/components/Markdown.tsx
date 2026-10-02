import ReactMarkdown, { type Components } from "react-markdown";
import rehypeHighlight from "rehype-highlight";
import type { ElementContent } from "hast";
import { CodeBlock } from "@/components/CodeBlock";
import { remarkCodeSnippets } from "@/lib/remarkCodeSnippets";
import styles from "@/components/Markdown.module.scss";

type Props = {
  children: string;
  inline?: boolean;
  codeLanguage?: string;
};

function readText({ node }: { node: ElementContent }): string {
  if (node.type === "text") return node.value;
  if (node.type === "element")
    return node.children.map((child) => readText({ node: child })).join("");
  return "";
}

export function Markdown({ children, inline = false, codeLanguage }: Props) {
  const components: Components = {
    ...(inline ? { p: ({ children }) => <>{children}</> } : {}),
    pre: ({ children, node }) => {
      if (inline) return <>{children}</>;
      const code =
        node?.children.find((child) => child.type === "element" && child.tagName === "code") ??
        null;
      const classes = code && code.type === "element" ? code.properties.className : [];
      const languageClass = Array.isArray(classes)
        ? classes.find(
            (name: unknown): name is string =>
              typeof name === "string" && name.startsWith("language-"),
          )
        : undefined;
      const language = languageClass?.slice("language-".length) ?? codeLanguage ?? "text";
      const source = code ? readText({ node: code }).replace(/\n$/, "") : "";
      return (
        <CodeBlock source={source} language={language}>
          {children}
        </CodeBlock>
      );
    },
  };

  const content = (
    <ReactMarkdown
      remarkPlugins={[[remarkCodeSnippets, { language: inline ? undefined : codeLanguage }]]}
      rehypePlugins={[
        [
          rehypeHighlight,
          { detect: true, subset: ["javascript", "typescript"], ignoreMissing: true },
        ],
      ]}
      components={components}
    >
      {children}
    </ReactMarkdown>
  );
  return inline ? (
    <span className={styles.inline}>{content}</span>
  ) : (
    <div className={styles.content}>{content}</div>
  );
}
