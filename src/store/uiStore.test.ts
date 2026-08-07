import { describe, expect, it, vi } from "vitest";
import { useUIStore } from "@/store/uiStore";

const dom = vi.hoisted(() => {
  const storage = new Map<string, string>();
  const localStorageStub = {
    getItem: (key: string) => storage.get(key) ?? null,
    setItem: (key: string, value: string) => {
      storage.set(key, value);
    },
    removeItem: (key: string) => {
      storage.delete(key);
    },
  };
  vi.stubGlobal("localStorage", localStorageStub);
  vi.stubGlobal("window", {
    localStorage: localStorageStub,
    matchMedia: () => ({ matches: true }),
  });
  return { storage };
});

describe("useUIStore", () => {
  it("opens the sidebar initially on wide viewports", () => {
    expect(useUIStore.getState().sidebarOpen).toBe(true);
  });

  it("toggleSidebar flips the open state", () => {
    useUIStore.getState().toggleSidebar();
    expect(useUIStore.getState().sidebarOpen).toBe(false);
    useUIStore.getState().toggleSidebar();
    expect(useUIStore.getState().sidebarOpen).toBe(true);
  });

  it("setSidebarOpen sets the state directly", () => {
    useUIStore.getState().setSidebarOpen(false);
    expect(useUIStore.getState().sidebarOpen).toBe(false);
    useUIStore.getState().setSidebarOpen(true);
    expect(useUIStore.getState().sidebarOpen).toBe(true);
    expect(dom.storage.get("crammr-ui-v1")).toContain('"sidebarOpen":true');
  });
});
