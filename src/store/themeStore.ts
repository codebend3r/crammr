import { create } from "zustand";

type ThemeMode = "light" | "dark" | "system";
type Effective = "light" | "dark";

const STORAGE_KEY = "lockedin-theme";

function readStored(): ThemeMode {
  const v = window.localStorage.getItem(STORAGE_KEY);
  if (v === "light" || v === "dark" || v === "system") return v;
  return "system";
}

function computeEffective(mode: ThemeMode): Effective {
  if (mode === "system") {
    return window.matchMedia("(prefers-color-scheme: dark)").matches
      ? "dark"
      : "light";
  }
  return mode;
}

function apply(effective: Effective) {
  document.documentElement.setAttribute("data-theme", effective);
}

type ThemeState = {
  mode: ThemeMode;
  effective: Effective;
  setMode: (mode: ThemeMode) => void;
  init: () => () => void;
};

const initialMode = readStored();

export const useThemeStore = create<ThemeState>((set, get) => ({
  mode: initialMode,
  effective: computeEffective(initialMode),
  setMode: (mode) => {
    window.localStorage.setItem(STORAGE_KEY, mode);
    const effective = computeEffective(mode);
    apply(effective);
    set({ mode, effective });
  },
  init: () => {
    apply(get().effective);
    const mql = window.matchMedia("(prefers-color-scheme: dark)");
    const handler = () => {
      if (get().mode !== "system") return;
      const effective = computeEffective("system");
      apply(effective);
      set({ effective });
    };
    mql.addEventListener("change", handler);
    return () => mql.removeEventListener("change", handler);
  },
}));
