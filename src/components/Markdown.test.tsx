import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";
import { Markdown } from "@/components/Markdown";
import { MultipleChoice } from "@/modes/MultipleChoice/MultipleChoice";
import { Flashcards } from "@/modes/Flashcards/Flashcards";
import { Recap } from "@/modes/Recap/Recap";
import type { Question } from "@/lib/types";

const question: Question = {
  id: "test-question",
  module_id: "javascript-2",
  category: null,
  prompt: "What is logged? `const n = 1; console.log(n);`",
  explanation: "The value is `1`.",
  flashcard_back: "1",
  recap_answer: "1",
  order_index: 0,
  created_at: "2026-01-01",
  choices: [
    { id: "one", question_id: "test-question", label: "`1`", is_correct: true, order_index: 0 },
  ],
};

const onAnswer = async () => {};
const onNext = () => {};

describe("Markdown code presentation", () => {
  it("renders the selected code frame with highlighted, numbered JavaScript", () => {
    const html = renderToStaticMarkup(
      <Markdown codeLanguage="javascript">{question.prompt}</Markdown>,
    );
    expect(html).toContain('data-code-theme="neon"');
    expect(html).toContain("question.js");
    expect(html).toContain("hljs-keyword");
    expect(html).toContain('aria-label="Copy code"');
    expect(html).toContain('aria-hidden="true"><span>1</span><span>2</span>');
    expect(html.match(/<option /g)).toHaveLength(4);
  });

  it("keeps short expressions inline and non-coding prompts unchanged", () => {
    const html = renderToStaticMarkup(
      <Markdown codeLanguage="javascript">{"What does `typeof null` return?"}</Markdown>,
    );
    expect(html).toContain("<code>typeof null</code>");
    expect(html).not.toContain("data-code-theme");
    const prose = renderToStaticMarkup(<Markdown>{question.prompt}</Markdown>);
    expect(prose).not.toContain("data-code-theme");
  });

  it("supports fenced TypeScript and unknown languages without crashing", () => {
    const ts = renderToStaticMarkup(
      <Markdown>{"```typescript\nconst n: number = 1;\n```"}</Markdown>,
    );
    expect(ts).toContain("question.ts");
    expect(ts).toContain("hljs-keyword");
    const unknown = renderToStaticMarkup(
      <Markdown>{"```unknown-language\nhello <script>\n```"}</Markdown>,
    );
    expect(unknown).toContain("hello &lt;script&gt;");
    expect(unknown).not.toContain("<script>");
  });

  it("does not promote code in inline answer labels or add nested controls", () => {
    const html = renderToStaticMarkup(
      <Markdown inline>{"`const x = 1; console.log(x);`"}</Markdown>,
    );
    expect(html).not.toContain("<select");
    expect(html).not.toContain("<button");
    expect(html).not.toContain("<div");
  });

  it("renders the same code block in multiple choice, flashcards, and recap", () => {
    const views = [
      <MultipleChoice
        question={question}
        onAnswer={onAnswer}
        onNext={onNext}
        codeLanguage="javascript"
      />,
      <Flashcards
        question={question}
        onAnswer={onAnswer}
        onNext={onNext}
        codeLanguage="javascript"
      />,
      <Recap question={question} onAnswer={onAnswer} onNext={onNext} codeLanguage="javascript" />,
    ];
    views.forEach((view) => {
      const html = renderToStaticMarkup(view);
      expect(html).toContain('data-code-theme="neon"');
      expect(html).not.toMatch(/<h2[^>]*>[^]*<section/);
      expect(html).not.toMatch(/<button[^>]*>[^]*<select/);
    });
  });
});
