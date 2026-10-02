import { create } from "zustand";

export type CodeTheme = "neon" | "nord" | "studio" | "paper";

export const CODE_THEMES: Array<{ id: CodeTheme; label: string; mode: "light" | "dark" }> = [
  { id: "neon", label: "Neon Terminal", mode: "dark" },
  { id: "nord", label: "Nordic Night", mode: "dark" },
  { id: "studio", label: "Studio Light", mode: "light" },
  { id: "paper", label: "Solarized Paper", mode: "light" },
];

const STORAGE_KEY = "crammr-code-theme";

export function isCodeTheme(value: unknown): value is CodeTheme {
  return CODE_THEMES.some((theme) => theme.id === value);
}

function readStored(): CodeTheme {
  try {
    const value = window.localStorage.getItem(STORAGE_KEY);
    return isCodeTheme(value) ? value : "neon";
  } catch {
    return "neon";
  }
}

type CodeThemeState = {
  theme: CodeTheme;
  setTheme: (options: { theme: CodeTheme }) => void;
};

export const useCodeThemeStore = create<CodeThemeState>((set) => ({
  theme: readStored(),
  setTheme: ({ theme }) => {
    try {
      window.localStorage.setItem(STORAGE_KEY, theme);
    } catch {
      // Private browsing can disable storage; the current session should still work.
    }
    set({ theme });
  },
}));
