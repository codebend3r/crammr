import ReactMarkdown, { type Components } from "react-markdown";
import rehypeHighlight from "rehype-highlight";
import { CodeBlock } from "@/components/CodeBlock";
import { remarkCodeSnippets } from "@/lib/remarkCodeSnippets";
import { codeText, rehypeInlineHighlight } from "@/lib/codeHighlighting";
import { HIGHLIGHT_OPTIONS } from "@/lib/codeLanguages";
import { useCodeThemeStore } from "@/store/codeThemeStore";
import styles from "@/components/Markdown.module.scss";
import syntax from "@/components/SyntaxHighlight.module.scss";

type Props = {
  children: string;
  inline?: boolean;
  codeLanguage?: string;
};

export function Markdown({ children, inline = false, codeLanguage }: Props) {
  const theme = useCodeThemeStore((state) => state.theme);
  const components: Components = {
    code: ({ children, className }) => (
      <code className={`${className ?? ""} ${syntax.tokens}`}>{children}</code>
    ),
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
      const source = code ? codeText({ node: code }).replace(/\n$/, "") : "";
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
        [rehypeInlineHighlight, { language: codeLanguage }],
        [rehypeHighlight, HIGHLIGHT_OPTIONS],
      ]}
      components={components}
    >
      {children}
    </ReactMarkdown>
  );
  return inline ? (
    <span className={`${styles.inline} ${syntax.theme}`} data-inline-theme={theme}>
      {content}
    </span>
  ) : (
    <div className={`${styles.content} ${syntax.theme}`} data-inline-theme={theme}>
      {content}
    </div>
  );
}
