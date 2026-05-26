import { create } from "zustand";
import { persist } from "zustand/middleware";
import type { Mode, Question } from "@/lib/types";

export type RecordedAnswer = {
  questionId: string;
  choiceId: string | null;
  selfGrade: boolean | null;
  isCorrect: boolean;
};

export type ModuleSession = {
  slug: string;
  sessionId: string;
  moduleId: string;
  mode: Mode;
  questions: Question[];
  currentIndex: number;
  answers: RecordedAnswer[];
  startedAt: number;
};

type SessionState = {
  sessions: Record<string, ModuleSession>;

  start: (
    slug: string,
    args: {
      sessionId: string;
      moduleId: string;
      mode: Mode;
      questions: Question[];
    }
  ) => void;

  recordAnswer: (slug: string, answer: RecordedAnswer) => void;
  advance: (slug: string) => void;
  setIndex: (slug: string, n: number) => void;
  discard: (slug: string) => void;
  reset: () => void;
};

export const useSessionStore = create<SessionState>()(
  persist(
    (set) => ({
      sessions: {},

      start: (slug, { sessionId, moduleId, mode, questions }) =>
        set((s) => ({
          sessions: {
            ...s.sessions,
            [slug]: {
              slug,
              sessionId,
              moduleId,
              mode,
              questions,
              currentIndex: 0,
              answers: [],
              startedAt: Date.now(),
            },
          },
        })),

      recordAnswer: (slug, answer) =>
        set((s) => {
          const sess = s.sessions[slug];
          if (!sess) return s;
          return {
            sessions: {
              ...s.sessions,
              [slug]: { ...sess, answers: [...sess.answers, answer] },
            },
          };
        }),

      advance: (slug) =>
        set((s) => {
          const sess = s.sessions[slug];
          if (!sess) return s;
          return {
            sessions: {
              ...s.sessions,
              [slug]: {
                ...sess,
                currentIndex: Math.min(
                  sess.currentIndex + 1,
                  sess.questions.length
                ),
              },
            },
          };
        }),

      setIndex: (slug, n) =>
        set((s) => {
          const sess = s.sessions[slug];
          if (!sess) return s;
          return {
            sessions: { ...s.sessions, [slug]: { ...sess, currentIndex: n } },
          };
        }),

      discard: (slug) =>
        set((s) => {
          const next = { ...s.sessions };
          delete next[slug];
          return { sessions: next };
        }),

      reset: () => set({ sessions: {} }),
    }),
    { name: "lockedin-session-v2" }
  )
);
