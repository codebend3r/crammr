import { useEffect, useId, useRef, useState, type ReactNode } from "react";
import { Check, Copy } from "lucide-react";
import { CODE_THEMES, isCodeTheme, useCodeThemeStore } from "@/store/codeThemeStore";
import styles from "@/components/CodeBlock.module.scss";

type Props = {
  children: ReactNode;
  source: string;
  language: string;
};

const LANGUAGE_LABELS: Record<string, { label: string; extension: string }> = {
  javascript: { label: "JavaScript", extension: "js" },
  js: { label: "JavaScript", extension: "js" },
  typescript: { label: "TypeScript", extension: "ts" },
  ts: { label: "TypeScript", extension: "ts" },
  python: { label: "Python", extension: "py" },
  py: { label: "Python", extension: "py" },
  json: { label: "JSON", extension: "json" },
  css: { label: "CSS", extension: "css" },
  html: { label: "HTML", extension: "html" },
  sql: { label: "SQL", extension: "sql" },
  bash: { label: "Shell", extension: "sh" },
  text: { label: "Plain text", extension: "txt" },
};

export function CodeBlock({ children, source, language }: Props) {
  const theme = useCodeThemeStore((state) => state.theme);
  const setTheme = useCodeThemeStore((state) => state.setTheme);
  const [copyStatus, setCopyStatus] = useState<"idle" | "copied" | "failed">("idle");
  const resetTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const copyRequest = useRef(0);
  const selectId = useId();
  const metadata = LANGUAGE_LABELS[language] ?? { label: language, extension: "txt" };
  const lines = source.split("\n");

  useEffect(() => {
    setCopyStatus("idle");
    return () => {
      copyRequest.current += 1;
      if (resetTimer.current !== null) clearTimeout(resetTimer.current);
    };
  }, [source]);

  const copy = async () => {
    const request = ++copyRequest.current;
    if (resetTimer.current !== null) clearTimeout(resetTimer.current);
    let status: "copied" | "failed" = "copied";
    try {
      await navigator.clipboard.writeText(source);
    } catch {
      status = "failed";
    }
    if (copyRequest.current !== request) return;
    setCopyStatus(status);
    resetTimer.current = setTimeout(() => setCopyStatus("idle"), 2500);
  };

  return (
    <section
      className={styles.window}
      data-code-theme={theme}
      aria-label={`${metadata.label} code`}
    >
      <header className={styles.header}>
        <span className={styles.trafficLights} aria-hidden="true">
          <span className={styles.red} />
          <span className={styles.yellow} />
          <span className={styles.green} />
        </span>
        <span className={styles.filename}>question.{metadata.extension}</span>
        <div className={styles.tools}>
          <label className={styles.srOnly} htmlFor={selectId}>
            Code theme
          </label>
          <select
            id={selectId}
            className={styles.themeSelect}
            value={theme}
            onChange={(event) => {
              const value = event.target.value;
              if (isCodeTheme(value)) setTheme({ theme: value });
            }}
          >
            <optgroup label="Dark themes">
              {CODE_THEMES.filter((item) => item.mode === "dark").map((item) => (
                <option key={item.id} value={item.id}>
                  {item.label}
                </option>
              ))}
            </optgroup>
            <optgroup label="Light themes">
              {CODE_THEMES.filter((item) => item.mode === "light").map((item) => (
                <option key={item.id} value={item.id}>
                  {item.label}
                </option>
              ))}
            </optgroup>
          </select>
          <button
            type="button"
            className={styles.copy}
            onClick={() => void copy()}
            aria-label={copyStatus === "copied" ? "Code copied" : "Copy code"}
            title={
              copyStatus === "failed"
                ? "Copy failed — select the code to copy manually"
                : "Copy code"
            }
          >
            {copyStatus === "copied" ? <Check size={16} /> : <Copy size={16} />}
          </button>
        </div>
      </header>
      <div className={styles.viewport}>
        <div className={styles.gutter} aria-hidden="true">
          {lines.map((_, index) => (
            <span key={index}>{index + 1}</span>
          ))}
        </div>
        <pre className={styles.code} tabIndex={0} aria-label={`${metadata.label} source code`}>
          {children}
        </pre>
      </div>
      <footer className={styles.footer}>
        <span>{metadata.label}</span>
        <span className={styles.status} role="status" aria-live="polite">
          {copyStatus === "copied"
            ? "Copied to clipboard"
            : copyStatus === "failed"
              ? "Copy failed — select code to copy"
              : `${lines.length} ${lines.length === 1 ? "line" : "lines"}`}
        </span>
      </footer>
    </section>
  );
}
