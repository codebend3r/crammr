import { useState } from "react";
import { Markdown } from "@/components/Markdown";
import { CODE_LANGUAGES } from "@/lib/codeLanguages";
import { CODE_EXAMPLES } from "@/lib/codeExamples";
import styles from "@/routes/FormatterGallery/FormatterGallery.module.scss";

const EXAMPLES = [
  {
    level: "Level 1 · Arrays",
    prompt:
      "What does this code log? `const numbers = [1, 2, 3]; const doubled = numbers.map((number) => number * 2); console.log(doubled);`",
  },
  {
    level: "Level 2 · Closures",
    prompt:
      "What does this factory function return: `function makeCounter() { let n = 0; return () => ++n; }`?",
  },
  {
    level: "Level 3 · Event loop",
    prompt:
      'What order do these log? `console.log("A"); setTimeout(() => console.log("B"), 0); Promise.resolve().then(() => console.log("C")); console.log("D");`',
  },
];

export function FormatterGallery() {
  const [language, setLanguage] = useState("python");
  const source = CODE_EXAMPLES.find((example) => example.language === language)?.source ?? "";
  return (
    <div className={styles.page}>
      <header className={styles.intro}>
        <p className={styles.eyebrow}>Option 6 · Selected design</p>
        <h1>Neon Terminal</h1>
        <p>
          Quiz code, presented like code. Choose from two light and two dark themes in any block;
          your choice applies to all code blocks and is remembered on this browser.
        </p>
      </header>
      <div className={styles.examples}>
        <article className={styles.example}>
          <h2>Popular language highlighting</h2>
          <label className={styles.languageField}>
            <span>Preview language</span>
            <select value={language} onChange={(event) => setLanguage(event.target.value)}>
              {CODE_LANGUAGES.map((item) => (
                <option key={item.id} value={item.id}>
                  {item.label}
                </option>
              ))}
            </select>
          </label>
          <Markdown>{`\`\`\`${language}\n${source}\n\`\`\``}</Markdown>
        </article>
        {EXAMPLES.map((example) => (
          <article key={example.level} className={styles.example}>
            <h2>{example.level}</h2>
            <Markdown codeLanguage="javascript">{example.prompt}</Markdown>
          </article>
        ))}
      </div>
      <aside className={styles.note}>
        <Markdown inline codeLanguage="javascript">
          {
            "Short expressions such as `typeof null` remain inline. Existing line breaks, strings, comments, and intentional syntax errors are preserved."
          }
        </Markdown>
      </aside>
    </div>
  );
}
