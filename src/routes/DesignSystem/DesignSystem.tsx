import { useEffect, useState } from "react";
import { useThemeStore } from "@/store/themeStore";
import styles from "@/routes/DesignSystem/DesignSystem.module.css";

const COLOR_TOKENS = [
  "color-bg",
  "color-surface",
  "color-text",
  "color-text-muted",
  "color-border",
  "color-accent",
  "color-accent-hover",
  "color-accent-soft",
  "color-correct",
  "color-correct-bg",
  "color-incorrect",
  "color-incorrect-bg",
  "color-badge-static-bg",
  "color-badge-static-fg",
  "color-badge-dynamic-bg",
  "color-badge-dynamic-fg",
  "color-code-bg",
  "color-code-block-bg",
] as const;

const HLJS_TOKENS = [
  "hljs-text",
  "hljs-comment",
  "hljs-keyword",
  "hljs-string",
  "hljs-number",
  "hljs-function",
  "hljs-built-in",
  "hljs-attr",
  "hljs-tag",
] as const;

const FONT_TOKENS = [
  {
    name: "font-sans",
    label: "Body / UI",
    sample: "The quick brown fox jumps over the lazy dog · 0123456789",
  },
  {
    name: "font-mono",
    label: "Code",
    sample: "const answer = 42; // typeof null === 'object'",
  },
  {
    name: "font-display",
    label: "Headings / brand",
    sample: "Locked In — focus, recall, repeat.",
  },
] as const;

const SPACE_TOKENS = [
  "space-1",
  "space-2",
  "space-3",
  "space-4",
  "space-5",
  "space-6",
  "space-7",
] as const;

const RADIUS_TOKENS = ["radius-sm", "radius-md", "radius-lg"] as const;

type Resolved = Record<string, string>;

function resolveAll(names: readonly string[]): Resolved {
  const cs = getComputedStyle(document.documentElement);
  return Object.fromEntries(
    names.map((n) => [n, cs.getPropertyValue(`--${n}`).trim()])
  );
}

export function DesignSystem() {
  const effective = useThemeStore((s) => s.effective);
  const [resolved, setResolved] = useState<{
    colours: Resolved;
    hljs: Resolved;
    fonts: Resolved;
    spaces: Resolved;
    radii: Resolved;
  }>({ colours: {}, hljs: {}, fonts: {}, spaces: {}, radii: {} });

  useEffect(() => {
    setResolved({
      colours: resolveAll(COLOR_TOKENS),
      hljs: resolveAll(HLJS_TOKENS),
      fonts: resolveAll(FONT_TOKENS.map((f) => f.name)),
      spaces: resolveAll(SPACE_TOKENS),
      radii: resolveAll(RADIUS_TOKENS),
    });
  }, [effective]);

  return (
    <div className={styles.page}>
      <header className={styles.pageHeader}>
        <h1 className={styles.title}>Design system</h1>
        <p className={styles.subtitle}>
          Live values for the <strong>{effective}</strong> theme — toggle the
          theme to inspect the other palette.
        </p>
      </header>

      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Colours</h2>
        <div className={styles.swatchGrid}>
          {COLOR_TOKENS.map((name) => (
            <Swatch key={name} name={name} value={resolved.colours[name]} />
          ))}
        </div>
      </section>

      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Syntax highlighting</h2>
        <div className={styles.swatchGrid}>
          {HLJS_TOKENS.map((name) => (
            <Swatch
              key={name}
              name={name}
              value={resolved.hljs[name]}
              monospace
            />
          ))}
        </div>
      </section>

      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Typography</h2>
        <div className={styles.typeStack}>
          {FONT_TOKENS.map((f) => (
            <div key={f.name} className={styles.typeRow}>
              <div className={styles.typeMeta}>
                <code className={styles.tokenName}>--{f.name}</code>
                <span className={styles.typeLabel}>{f.label}</span>
              </div>
              <div
                className={styles.typeSample}
                style={{ fontFamily: `var(--${f.name})` }}
              >
                {f.sample}
              </div>
              <code className={styles.tokenValue}>
                {resolved.fonts[f.name]}
              </code>
            </div>
          ))}
        </div>
      </section>

      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Spacing</h2>
        <div className={styles.spaceStack}>
          {SPACE_TOKENS.map((name) => (
            <div key={name} className={styles.spaceRow}>
              <code className={styles.tokenName}>--{name}</code>
              <div
                className={styles.spaceBar}
                style={{ width: `var(--${name})` }}
              />
              <code className={styles.tokenValue}>{resolved.spaces[name]}</code>
            </div>
          ))}
        </div>
      </section>

      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Radius</h2>
        <div className={styles.radiusRow}>
          {RADIUS_TOKENS.map((name) => (
            <div key={name} className={styles.radiusItem}>
              <div
                className={styles.radiusBox}
                style={{ borderRadius: `var(--${name})` }}
              />
              <code className={styles.tokenName}>--{name}</code>
              <code className={styles.tokenValue}>{resolved.radii[name]}</code>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}

type SwatchProps = {
  name: string;
  value: string;
  monospace?: boolean;
};

function Swatch({ name, value, monospace = false }: SwatchProps) {
  return (
    <div className={styles.swatch}>
      <div
        className={monospace ? styles.chipText : styles.chip}
        style={
          monospace
            ? { color: `var(--${name})` }
            : { background: `var(--${name})` }
        }
      >
        {monospace ? "Aa" : null}
      </div>
      <code className={styles.tokenName}>--{name}</code>
      <code className={styles.tokenValue}>{value || "—"}</code>
    </div>
  );
}
