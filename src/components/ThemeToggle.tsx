import { Sun, Moon, Monitor } from "lucide-react";
import { useThemeStore } from "@/store/themeStore";
import styles from "@/components/ThemeToggle.module.css";

const NEXT = { light: "dark", dark: "system", system: "light" } as const;
const LABEL = { light: "Light", dark: "Dark", system: "System" } as const;

export function ThemeToggle() {
  const mode = useThemeStore((s) => s.mode);
  const setMode = useThemeStore((s) => s.setMode);
  const Icon = mode === "light" ? Sun : mode === "dark" ? Moon : Monitor;

  return (
    <button
      type="button"
      onClick={() => setMode(NEXT[mode])}
      className={styles.toggle}
      title={`Theme: ${LABEL[mode]} — click to change`}
      aria-label={`Theme: ${LABEL[mode]} (click to change)`}
    >
      <Icon size={16} />
    </button>
  );
}
