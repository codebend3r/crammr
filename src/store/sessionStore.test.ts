import { beforeEach, describe, expect, it, vi } from "vitest";
import type { Mode, Question } from "@/lib/types";
import { useSessionStore } from "@/store/sessionStore";

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
  vi.stubGlobal("window", { localStorage: localStorageStub });
  return { storage };
});

const makeQuestion = (id: string): Question => ({
  id,
  module_id: "m1",
  category: null,
  prompt: `prompt ${id}`,
  explanation: null,
  flashcard_back: "back",
  recap_answer: "answer",
  order_index: 0,
  created_at: "2026-08-01",
  choices: [],
});

const startArgs: { sessionId: string; moduleId: string; mode: Mode; questions: Question[] } = {
  sessionId: "s1",
  moduleId: "m1",
  mode: "multiple_choice",
  questions: [makeQuestion("q1"), makeQuestion("q2")],
};

beforeEach(() => {
  useSessionStore.getState().reset();
});

describe("useSessionStore", () => {
  it("start creates a fresh session for the slug", () => {
    useSessionStore.getState().start("javascript", startArgs);
    const sess = useSessionStore.getState().sessions.javascript;
    expect(sess?.sessionId).toBe("s1");
    expect(sess?.currentIndex).toBe(0);
    expect(sess?.answers).toEqual([]);
    expect(sess?.questions).toHaveLength(2);
    expect(dom.storage.get("crammr-session-v2")).toContain("javascript");
  });

  it("recordAnswer appends to the session's answers", () => {
    useSessionStore.getState().start("javascript", startArgs);
    const answer = { questionId: "q1", choiceId: "c1", selfGrade: null, isCorrect: true };
    useSessionStore.getState().recordAnswer("javascript", answer);
    expect(useSessionStore.getState().sessions.javascript?.answers).toEqual([answer]);
  });

  it("recordAnswer ignores unknown slugs", () => {
    const before = useSessionStore.getState().sessions;
    useSessionStore.getState().recordAnswer("missing", {
      questionId: "q1",
      choiceId: null,
      selfGrade: true,
      isCorrect: true,
    });
    expect(useSessionStore.getState().sessions).toEqual(before);
  });

  it("advance increments the index and clamps at the question count", () => {
    useSessionStore.getState().start("javascript", startArgs);
    useSessionStore.getState().advance("javascript");
    expect(useSessionStore.getState().sessions.javascript?.currentIndex).toBe(1);
    useSessionStore.getState().advance("javascript");
    useSessionStore.getState().advance("javascript");
    expect(useSessionStore.getState().sessions.javascript?.currentIndex).toBe(2);
  });

  it("advance ignores unknown slugs", () => {
    useSessionStore.getState().advance("missing");
    expect(useSessionStore.getState().sessions.missing).toBeUndefined();
  });

  it("setIndex jumps to the given index", () => {
    useSessionStore.getState().start("javascript", startArgs);
    useSessionStore.getState().setIndex("javascript", 1);
    expect(useSessionStore.getState().sessions.javascript?.currentIndex).toBe(1);
  });

  it("setIndex ignores unknown slugs", () => {
    useSessionStore.getState().setIndex("missing", 3);
    expect(useSessionStore.getState().sessions.missing).toBeUndefined();
  });

  it("discard removes only the given slug", () => {
    useSessionStore.getState().start("javascript", startArgs);
    useSessionStore.getState().start("python", { ...startArgs, sessionId: "s2" });
    useSessionStore.getState().discard("javascript");
    expect(useSessionStore.getState().sessions.javascript).toBeUndefined();
    expect(useSessionStore.getState().sessions.python?.sessionId).toBe("s2");
  });

  it("reset clears all sessions", () => {
    useSessionStore.getState().start("javascript", startArgs);
    useSessionStore.getState().reset();
    expect(useSessionStore.getState().sessions).toEqual({});
  });
});
