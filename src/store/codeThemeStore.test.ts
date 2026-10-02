import { beforeEach, describe, expect, it, vi } from "vitest";

const storage = vi.hoisted(() => {
  const values = new Map<string, string>();
  const getItem = vi.fn((key: string) => values.get(key) ?? null);
  const setItem = vi.fn((key: string, value: string) => {
    values.set(key, value);
  });
  vi.stubGlobal("window", { localStorage: { getItem, setItem } });
  return { values, getItem, setItem };
});

beforeEach(() => {
  storage.values.clear();
  storage.getItem.mockClear();
  storage.setItem.mockClear();
  vi.resetModules();
});

describe("code theme preferences", () => {
  it("defaults to the selected Neon Terminal design", async () => {
    const { useCodeThemeStore, CODE_THEMES } = await import("@/store/codeThemeStore");
    expect(useCodeThemeStore.getState().theme).toBe("neon");
    expect(CODE_THEMES.filter((theme) => theme.mode === "light")).toHaveLength(2);
    expect(CODE_THEMES.filter((theme) => theme.mode === "dark")).toHaveLength(2);
  });

  it("persists a selection and restores it on reload", async () => {
    const { useCodeThemeStore } = await import("@/store/codeThemeStore");
    useCodeThemeStore.getState().setTheme({ theme: "paper" });
    expect(storage.values.get("crammr-code-theme")).toBe("paper");
    vi.resetModules();
    const reloaded = await import("@/store/codeThemeStore");
    expect(reloaded.useCodeThemeStore.getState().theme).toBe("paper");
  });

  it("ignores invalid saved preferences", async () => {
    storage.values.set("crammr-code-theme", "unknown-theme");
    const { useCodeThemeStore, isCodeTheme } = await import("@/store/codeThemeStore");
    expect(useCodeThemeStore.getState().theme).toBe("neon");
    expect(isCodeTheme("unknown-theme")).toBe(false);
    expect(isCodeTheme(null)).toBe(false);
  });

  it("works when browser storage is unavailable", async () => {
    storage.getItem.mockImplementationOnce(() => {
      throw new Error("Blocked");
    });
    storage.setItem.mockImplementationOnce(() => {
      throw new Error("Blocked");
    });
    const { useCodeThemeStore } = await import("@/store/codeThemeStore");
    expect(useCodeThemeStore.getState().theme).toBe("neon");
    expect(() => useCodeThemeStore.getState().setTheme({ theme: "studio" })).not.toThrow();
    expect(useCodeThemeStore.getState().theme).toBe("studio");
  });
});
