import { describe, expect, it, vi } from "vitest";
import { useThemeStore } from "@/store/themeStore";

const dom = vi.hoisted(() => {
  const storage = new Map<string, string>();
  const listeners: Array<() => void> = [];
  const mql = {
    matches: false,
    media: "(prefers-color-scheme: dark)",
    addEventListener: (_type: string, handler: () => void) => {
      listeners.push(handler);
    },
    removeEventListener: (_type: string, handler: () => void) => {
      const index = listeners.indexOf(handler);
      if (index >= 0) listeners.splice(index, 1);
    },
  };
  const attributes = new Map<string, string>();

  vi.stubGlobal("window", {
    localStorage: {
      getItem: (key: string) => storage.get(key) ?? null,
      setItem: (key: string, value: string) => {
        storage.set(key, value);
      },
      removeItem: (key: string) => {
        storage.delete(key);
      },
    },
    matchMedia: () => mql,
  });
  vi.stubGlobal("document", {
    documentElement: {
      setAttribute: (name: string, value: string) => {
        attributes.set(name, value);
      },
      getAttribute: (name: string) => attributes.get(name) ?? null,
    },
  });

  return { storage, listeners, mql, attributes };
});

describe("useThemeStore", () => {
  it("defaults to system mode with the effective theme from the media query", () => {
    expect(useThemeStore.getState().mode).toBe("system");
    expect(useThemeStore.getState().effective).toBe("light");
  });

  it("setMode persists the mode and applies it to the document", () => {
    useThemeStore.getState().setMode("dark");
    expect(dom.storage.get("crammr-theme")).toBe("dark");
    expect(dom.attributes.get("data-theme")).toBe("dark");
    expect(useThemeStore.getState().effective).toBe("dark");
  });

  it("setMode system derives the effective theme from the media query", () => {
    dom.mql.matches = true;
    useThemeStore.getState().setMode("system");
    expect(useThemeStore.getState().effective).toBe("dark");
    dom.mql.matches = false;
  });

  it("init applies the current theme and reacts to system changes while in system mode", () => {
    useThemeStore.getState().setMode("system");
    const cleanup = useThemeStore.getState().init();
    expect(dom.listeners).toHaveLength(1);

    dom.mql.matches = true;
    dom.listeners.forEach((listener) => listener());
    expect(useThemeStore.getState().effective).toBe("dark");
    expect(dom.attributes.get("data-theme")).toBe("dark");

    cleanup();
    expect(dom.listeners).toHaveLength(0);
    dom.mql.matches = false;
  });

  it("system changes are ignored when an explicit mode is set", () => {
    useThemeStore.getState().setMode("light");
    const cleanup = useThemeStore.getState().init();

    dom.mql.matches = true;
    dom.listeners.forEach((listener) => listener());
    expect(useThemeStore.getState().effective).toBe("light");

    cleanup();
    dom.mql.matches = false;
  });
});
