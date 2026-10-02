import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";
import { Markdown } from "@/components/Markdown";
import { CODE_EXAMPLES } from "@/lib/codeExamples";
import {
  CODE_LANGUAGES,
  codeLanguageForModule,
  codeLanguageMetadata,
  getCodeLanguage,
} from "@/lib/codeLanguages";

const aliases = CODE_LANGUAGES.flatMap((language) =>
  language.aliases.map((alias) => ({ alias, id: language.id, extension: language.extension })),
);

describe("popular code languages", () => {
  it("has a preview and regression example for every registered language", () => {
    expect(CODE_EXAMPLES.map((example) => example.language).sort()).toEqual(
      CODE_LANGUAGES.map((language) => language.id).sort(),
    );
  });

  it.each(CODE_EXAMPLES)("highlights $language in Neon Terminal", ({ language, source }) => {
    const html = renderToStaticMarkup(
      <Markdown>{`\`\`\`${language}\n${source}\n\`\`\``}</Markdown>,
    );
    const metadata = codeLanguageMetadata({ language });
    expect(html).toContain('data-code-theme="neon"');
    expect(html).toContain(`question.${metadata.extension}`);
    expect(html).toContain(`language-${language}`);
    expect(html).toMatch(/<span class="hljs-/);
  });

  it.each(aliases)("resolves the $alias alias to $id", ({ alias, id, extension }) => {
    expect(getCodeLanguage({ language: alias })?.id ?? null).toBe(id);
    expect(codeLanguageMetadata({ language: alias }).extension).toBe(extension);
    const source = CODE_EXAMPLES.find((example) => example.language === id)?.source ?? "";
    const html = renderToStaticMarkup(<Markdown>{`\`\`\`${alias}\n${source}\n\`\`\``}</Markdown>);
    expect(html).toContain(`language-${id}`);
    expect(html).toMatch(/<span class="hljs-/);
  });

  it.each([
    "javascript",
    "typescript",
    "python",
    "c",
    "cpp",
    "csharp",
    "java",
    "sql",
    "go",
    "rust",
  ])("infers %s for all quiz levels", (language) =>
    [1, 2, 3].forEach((level) => {
      expect(codeLanguageForModule({ slug: `${language}-${level}` })).toBe(language);
    }),
  );

  it("normalizes case and does not guess non-coding modules", () => {
    expect(getCodeLanguage({ language: "  C# " })?.id ?? null).toBe("csharp");
    expect(codeLanguageForModule({ slug: "golang-2" })).toBe("go");
    expect(codeLanguageForModule({ slug: "g1" })).toBeUndefined();
    expect(codeLanguageForModule({ slug: "real-estate" })).toBeUndefined();
  });

  it("detects an unlabelled Python block rather than assuming JavaScript", () => {
    const source = CODE_EXAMPLES.find((example) => example.language === "python")?.source ?? "";
    const html = renderToStaticMarkup(<Markdown>{`\`\`\`\n${source}\n\`\`\``}</Markdown>);
    expect(html).toContain("language-python");
    expect(html).toContain("question.py");
  });

  it.each(["text", "plaintext", "txt", "plain"])(
    "leaves explicit %s blocks unhighlighted",
    (language) => {
      const html = renderToStaticMarkup(
        <Markdown>{`\`\`\`${language}\nconst n = 42;\n\`\`\``}</Markdown>,
      );
      expect(html).toContain("Plain text");
      expect(html).not.toMatch(/<span class="hljs-/);
    },
  );

  it("supports JSX and TSX markup without rendering it as HTML", () => {
    ["jsx", "tsx"].forEach((language) => {
      const html = renderToStaticMarkup(
        <Markdown>{`\`\`\`${language}\nconst view = <button disabled={true}>Hello</button>;\n\`\`\``}</Markdown>,
      );
      expect(html).toContain("hljs-tag");
      expect(html).toContain("hljs-keyword");
      expect(html).not.toContain("<button disabled=");
    });
  });

  it.each([
    { language: "javascript", source: "typeof null" },
    { language: "python", source: 'len("Ada")' },
    { language: "csharp", source: 'Console.WriteLine("Ada");' },
    { language: "go", source: "var count int = 3" },
    { language: "rust", source: "let count = 3;" },
  ])("highlights inline $language snippets without adding controls", ({ language, source }) => {
    const html = renderToStaticMarkup(
      <Markdown inline codeLanguage={language}>{`\`${source}\``}</Markdown>,
    );
    expect(html).toContain(`language-${language}`);
    expect(html).toMatch(/<span class="hljs-/);
    expect(html).not.toContain("<pre");
    expect(html).not.toContain("<button");
    expect(html).not.toContain("<select");
  });

  it("escapes HTML-like strings and handles unknown inline languages", () => {
    const html = renderToStaticMarkup(
      <Markdown inline codeLanguage="javascript">
        {'`"<script>alert(1)</script>"`'}
      </Markdown>,
    );
    expect(html).toContain("&lt;script&gt;");
    expect(html).not.toContain("<script>");
    const unknown = renderToStaticMarkup(
      <Markdown inline codeLanguage="unknown">
        {"`const n = 1;`"}
      </Markdown>,
    );
    expect(unknown).not.toMatch(/<span class="hljs-/);
  });
});
