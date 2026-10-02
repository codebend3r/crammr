import assert from "node:assert/strict";
import { chromium } from "playwright";
import { createServer } from "vite";

const fixtureModule = "\0virtual:code-block-tests";
const fixtureSource = `
  import { createElement } from "react";
  import { createRoot } from "react-dom/client";
  import { Markdown } from "/src/components/Markdown.tsx";
  import { MultipleChoice } from "/src/modes/MultipleChoice/MultipleChoice.tsx";
  import { Flashcards } from "/src/modes/Flashcards/Flashcards.tsx";
  import { Recap } from "/src/modes/Recap/Recap.tsx";
  import { CODE_EXAMPLES } from "/src/lib/codeExamples.ts";
  import "/src/styles/globals.scss";

  const question = ${JSON.stringify({
    id: "test-question",
    module_id: "javascript-1",
    category: null,
    prompt: "What is logged? `const n = 1; console.log(n);`",
    explanation: "Why? `const answer = 1; console.log(answer);`",
    flashcard_back: "Answer: `1`",
    recap_answer: "Answer: `1`",
    order_index: 0,
    created_at: "2026-01-01",
    choices: [
      { id: "one", question_id: "test-question", label: "`1`", is_correct: true, order_index: 0 },
    ],
  })};
  const mode = new URLSearchParams(location.search).get("mode") ?? "markdown";
  const views = { multiple_choice: MultipleChoice, flashcards: Flashcards, recap: Recap };
  const view = views[mode];
  const longSnippet = ${JSON.stringify('```javascript\nconst longText = "' + "long literal ".repeat(30) + '";\n```')};
  const samples = {
    long: { codeLanguage: "javascript", children: longSnippet },
    inline: { inline: true, codeLanguage: "javascript", children: ${JSON.stringify("Short expression: `typeof null`")} },
    languages: { children: CODE_EXAMPLES.map((example) => "~~~" + example.language + "\\n" + example.source + "\\n~~~").join("\\n\\n") },
  };
  const sample = samples[mode];
  const content = sample
    ? createElement(Markdown, sample)
    : view
      ? createElement(view, { question, onAnswer: async () => {}, onNext: () => {}, codeLanguage: "javascript" })
      : createElement(Markdown, { codeLanguage: "javascript", children: question.prompt + "\\n\\n" + question.explanation });
  createRoot(document.getElementById("root")).render(
    createElement("main", { className: "fixture", style: { padding: "var(--space-3)", minWidth: 0 } }, content)
  );
`;

const server = await createServer({
  logLevel: "error",
  server: { host: "127.0.0.1", port: 0, strictPort: true },
  css: { preprocessorOptions: { scss: { api: "modern" } } },
  plugins: [
    {
      name: "code-block-test-fixture",
      resolveId(id) {
        if (id === "virtual:code-block-tests") return fixtureModule;
      },
      load(id) {
        if (id === fixtureModule) return fixtureSource;
      },
      configureServer(vite) {
        vite.middlewares.use("/__code-tests", async (request, response, next) => {
          try {
            const html = await vite.transformIndexHtml(
              request.url ?? "/__code-tests",
              `
            <!doctype html><html><head><title>Code tests</title></head><body>
            <div id="root"></div>
            <script type="module" src="/@id/__x00__virtual:code-block-tests"></script>
            </body></html>
          `,
            );
            response.setHeader("Content-Type", "text/html");
            response.end(html);
          } catch (error) {
            next(error);
          }
        });
      },
    },
  ],
});

let browser;
try {
  await server.listen();
  const url = server.resolvedUrls?.local[0] ?? "";
  assert.ok(url, "Test server must have a local URL");
  browser = await chromium.launch({ headless: true, timeout: 15000 });
  const context = await browser.newContext({ permissions: ["clipboard-read", "clipboard-write"] });
  const page = await context.newPage();
  page.setDefaultTimeout(10000);
  const errors = [];
  page.on("pageerror", (error) => errors.push(error.message));

  await page.goto(`${url}__code-tests`);
  await page.locator("[data-code-theme]").first().waitFor();
  assert.equal(await page.locator('[data-code-theme="neon"]').count(), 2);
  assert.equal(
    await page.getByRole("combobox", { name: "Code theme" }).first().locator("option").count(),
    4,
  );
  assert.ok(await page.locator(".hljs-keyword").count());
  await page.screenshot({ path: "/tmp/crammr-code-neon.png", fullPage: true });

  const colors = [];
  await ["nord", "studio", "paper", "neon"].reduce(async (previous, theme) => {
    await previous;
    await page.getByRole("combobox", { name: "Code theme" }).first().selectOption(theme);
    assert.equal(await page.locator(`[data-code-theme="${theme}"]`).count(), 2);
    colors.push(
      await page
        .locator("[data-code-theme]")
        .first()
        .evaluate((element) => getComputedStyle(element).backgroundColor),
    );
  }, Promise.resolve());
  assert.equal(new Set(colors).size, 4);

  await page.getByRole("combobox", { name: "Code theme" }).first().selectOption("paper");
  await page.reload();
  await page.locator('[data-code-theme="paper"]').first().waitFor();
  assert.equal(await page.locator('[data-code-theme="paper"]').count(), 2);

  await page.getByRole("button", { name: "Copy code", exact: true }).first().click();
  await page.getByRole("button", { name: "Code copied" }).waitFor();
  assert.equal(
    await page.evaluate(() => navigator.clipboard.readText()),
    "const n = 1;\nconsole.log(n);",
  );
  console.log(
    "PASS: highlighting, four synchronized themes, persistence, and exact clipboard content",
  );

  await page.evaluate(() =>
    Object.defineProperty(navigator, "clipboard", {
      configurable: true,
      value: { writeText: () => Promise.reject(new Error("Clipboard blocked")) },
    }),
  );
  await page.getByRole("button", { name: "Code copied" }).click();
  await page.getByText("Copy failed — select code to copy", { exact: true }).waitFor();
  console.log("PASS: clipboard failures are recoverable and announced");

  await page.setViewportSize({ width: 375, height: 844 });
  assert.ok(await page.evaluate(() => document.documentElement.scrollWidth <= window.innerWidth));
  assert.ok(await page.getByRole("combobox", { name: "Code theme" }).first().isVisible());
  await page.screenshot({ path: "/tmp/crammr-code-mobile.png", fullPage: true });
  await page.goto(`${url}__code-tests?mode=long`);
  await page.locator("pre").waitFor();
  assert.ok(
    await page.locator("pre").evaluate((element) => element.scrollWidth > element.clientWidth),
  );
  assert.ok(await page.evaluate(() => document.documentElement.scrollWidth <= window.innerWidth));
  assert.equal(
    await page.locator("pre code").evaluate((element) => getComputedStyle(element).whiteSpace),
    "pre",
  );
  console.log(
    "PASS: mobile layout and long lines scroll inside the code block without page overflow",
  );

  await page.goto(`${url}__code-tests?mode=multiple_choice`);
  await page.getByRole("button", { name: "1", exact: true }).click();
  await page.getByRole("button", { name: "Next", exact: true }).waitFor();
  assert.equal(await page.locator("[data-code-theme]").count(), 2);

  await page.goto(`${url}__code-tests?mode=flashcards`);
  await page.getByRole("combobox", { name: "Code theme" }).selectOption("neon");
  await page.getByRole("button", { name: "Copy code", exact: true }).click();
  await page.getByRole("button", { name: "Code copied" }).waitFor();
  assert.ok(await page.getByRole("button", { name: "Reveal answer", exact: true }).isVisible());
  assert.equal(await page.locator("button select, button button, h2 section").count(), 0);
  await page.getByRole("button", { name: "Reveal answer", exact: true }).click();
  await page.getByRole("button", { name: "Got it", exact: true }).click();
  await page.getByRole("button", { name: "Next", exact: true }).waitFor();

  await page.goto(`${url}__code-tests?mode=recap`);
  await page.getByRole("button", { name: "Reveal answer", exact: true }).click();
  await page.getByRole("button", { name: "Got it", exact: true }).click();
  await page.getByRole("button", { name: "Next", exact: true }).waitFor();
  console.log(
    "PASS: multiple choice, explanations, flashcard controls, and recap with no browser errors",
  );

  await page.goto(`${url}__code-tests?mode=languages`);
  await page.locator("[data-code-theme]").last().waitFor();
  const blocks = await page.locator("[data-code-theme]").evaluateAll((elements) =>
    elements.map((element) => {
      const code = element.querySelector("pre code");
      const baseColor = code ? getComputedStyle(code).color : "";
      return {
        label: element.getAttribute("aria-label"),
        hasColors: Array.from(element.querySelectorAll("pre code span[class]")).some(
          (token) => getComputedStyle(token).color !== baseColor,
        ),
      };
    }),
  );
  assert.equal(blocks.length, 23);
  blocks.forEach((block) =>
    assert.ok(block.hasColors, `${block.label} must have visible syntax colors`),
  );
  const tokenColor = (selector) =>
    page
      .locator(selector)
      .first()
      .evaluate((element) => getComputedStyle(element).color);
  assert.equal(await tokenColor(".hljs-keyword"), "rgb(255, 106, 193)");
  assert.equal(await tokenColor(".hljs-string"), "rgb(195, 248, 92)");
  assert.equal(await tokenColor(".hljs-number"), "rgb(104, 217, 255)");
  assert.ok(await page.evaluate(() => document.documentElement.scrollWidth <= window.innerWidth));

  await page.getByRole("combobox", { name: "Code theme" }).first().selectOption("studio");
  assert.equal(await page.locator('[data-code-theme="studio"]').count(), 23);
  assert.equal(await tokenColor(".hljs-keyword"), "rgb(160, 28, 101)");
  await page.getByRole("combobox", { name: "Code theme" }).first().selectOption("neon");
  const markup = page.getByRole("region", { name: "HTML / XML code", exact: true });
  await markup.getByRole("button", { name: "Copy code", exact: true }).click();
  await markup.getByRole("button", { name: "Code copied" }).waitFor();
  assert.equal(
    await page.evaluate(() => navigator.clipboard.readText()),
    '<!-- A greeting card -->\n<section class="notice">\n  <h1>Hello, Ada!</h1>\n</section>',
  );
  assert.equal(await markup.locator("pre section, pre h1").count(), 0);

  await page.goto(`${url}__code-tests?mode=inline`);
  await page.locator(".hljs-keyword").waitFor();
  assert.equal(await tokenColor(".hljs-keyword"), "rgb(255, 106, 193)");
  assert.equal(await page.locator("code").textContent(), "typeof null");
  assert.equal(
    await page.locator("code").evaluate((element) => getComputedStyle(element).backgroundColor),
    "rgb(0, 0, 0)",
  );
  assert.equal(await page.locator("pre, select, button").count(), 0);
  assert.deepEqual(errors, []);
  console.log(
    "PASS: visible Neon syntax colors for 23 languages, light-theme contrast, and inline highlighting",
  );
} finally {
  if (browser) await browser.close();
  await server.close();
}
