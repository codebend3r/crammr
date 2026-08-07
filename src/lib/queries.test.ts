import { beforeEach, describe, expect, it, vi } from "vitest";
import {
  completeSession,
  createModuleRequest,
  createSession,
  fetchLastScoreByModule,
  fetchModuleBySlug,
  fetchModuleRequests,
  fetchModules,
  fetchQuestionsForModule,
  fetchRequestCategories,
  fetchSessionWithAnswers,
  recordAnswer,
} from "./queries";

const mock = vi.hoisted(() => {
  type BuilderResult = { data: unknown; error: unknown };

  type MockBuilder = {
    select: (columns?: string) => MockBuilder;
    order: (column?: string, opts?: { ascending: boolean }) => MockBuilder;
    eq: (column?: string, value?: unknown) => MockBuilder;
    not: (column?: string, operator?: string, value?: unknown) => MockBuilder;
    in: (column?: string, values?: unknown[]) => MockBuilder;
    insert: (row?: unknown) => MockBuilder;
    update: (row?: unknown) => MockBuilder;
    single: () => MockBuilder;
    maybeSingle: () => MockBuilder;
    then: <T>(onFulfilled: (value: BuilderResult) => T) => Promise<T>;
  };

  type MockState = {
    queue: BuilderResult[];
    tables: string[];
    user: { id: string } | null;
  };

  const state: MockState = { queue: [], tables: [], user: { id: "user-1" } };

  const createBuilder = (result: BuilderResult): MockBuilder => {
    const builder: MockBuilder = {
      select: () => builder,
      order: () => builder,
      eq: () => builder,
      not: () => builder,
      in: () => builder,
      insert: () => builder,
      update: () => builder,
      single: () => builder,
      maybeSingle: () => builder,
      then: (onFulfilled) => Promise.resolve(result).then(onFulfilled),
    };
    return builder;
  };

  return { state, createBuilder };
});

vi.mock("@/lib/supabase", () => ({
  supabase: {
    from: (table: string) => {
      mock.state.tables.push(table);
      return mock.createBuilder(mock.state.queue.shift() ?? { data: null, error: null });
    },
    auth: {
      getUser: () => Promise.resolve({ data: { user: mock.state.user } }),
    },
  },
}));

beforeEach(() => {
  mock.state.queue = [];
  mock.state.tables = [];
  mock.state.user = { id: "user-1" };
});

describe("fetchModules", () => {
  it("returns rows ordered from the modules table", async () => {
    const rows = [{ id: "m1" }, { id: "m2" }];
    mock.state.queue = [{ data: rows, error: null }];
    await expect(fetchModules()).resolves.toEqual(rows);
    expect(mock.state.tables).toEqual(["modules"]);
  });

  it("returns an empty array when data is null", async () => {
    mock.state.queue = [{ data: null, error: null }];
    await expect(fetchModules()).resolves.toEqual([]);
  });

  it("throws when the query errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("boom") }];
    await expect(fetchModules()).rejects.toThrow("boom");
  });
});

describe("fetchModuleBySlug", () => {
  it("returns the matching module", async () => {
    const row = { id: "m1", slug: "javascript" };
    mock.state.queue = [{ data: row, error: null }];
    await expect(fetchModuleBySlug("javascript")).resolves.toEqual(row);
    expect(mock.state.tables).toEqual(["modules"]);
  });

  it("throws when the query errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("nope") }];
    await expect(fetchModuleBySlug("javascript")).rejects.toThrow("nope");
  });
});

describe("fetchQuestionsForModule", () => {
  it("sorts each question's choices by order_index", async () => {
    mock.state.queue = [
      {
        data: [
          {
            id: "q1",
            choices: [
              { id: "c2", order_index: 2 },
              { id: "c1", order_index: 1 },
            ],
          },
        ],
        error: null,
      },
    ];
    const questions = await fetchQuestionsForModule("m1");
    expect(questions[0]?.choices.map((c) => c.id)).toEqual(["c1", "c2"]);
    expect(mock.state.tables).toEqual(["questions"]);
  });

  it("defaults missing choices to an empty array", async () => {
    mock.state.queue = [{ data: [{ id: "q1" }], error: null }];
    const questions = await fetchQuestionsForModule("m1");
    expect(questions[0]?.choices).toEqual([]);
  });

  it("throws when the query errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("bad") }];
    await expect(fetchQuestionsForModule("m1")).rejects.toThrow("bad");
  });
});

describe("createSession", () => {
  it("throws when not signed in", async () => {
    mock.state.user = null;
    await expect(
      createSession({ moduleId: "m1", mode: "multiple_choice", sessionSize: 10 }),
    ).rejects.toThrow("Not signed in");
  });

  it("inserts and returns the new session", async () => {
    const row = { id: "s1", module_id: "m1" };
    mock.state.queue = [{ data: row, error: null }];
    await expect(
      createSession({ moduleId: "m1", mode: "multiple_choice", sessionSize: 10 }),
    ).resolves.toEqual(row);
    expect(mock.state.tables).toEqual(["sessions"]);
  });

  it("throws when the insert errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("insert failed") }];
    await expect(
      createSession({ moduleId: "m1", mode: "flashcards", sessionSize: 5 }),
    ).rejects.toThrow("insert failed");
  });
});

describe("recordAnswer", () => {
  it("inserts and returns the answer", async () => {
    const row = { id: "a1", session_id: "s1" };
    mock.state.queue = [{ data: row, error: null }];
    await expect(
      recordAnswer({
        sessionId: "s1",
        questionId: "q1",
        choiceId: "c1",
        selfGrade: null,
        isCorrect: true,
      }),
    ).resolves.toEqual(row);
    expect(mock.state.tables).toEqual(["session_answers"]);
  });

  it("throws when the insert errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("denied") }];
    await expect(
      recordAnswer({
        sessionId: "s1",
        questionId: "q1",
        choiceId: null,
        selfGrade: true,
        isCorrect: false,
      }),
    ).rejects.toThrow("denied");
  });
});

describe("completeSession", () => {
  it("resolves when the update succeeds", async () => {
    mock.state.queue = [{ data: null, error: null }];
    await expect(completeSession({ sessionId: "s1", score: 8 })).resolves.toBeUndefined();
    expect(mock.state.tables).toEqual(["sessions"]);
  });

  it("throws when the update errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("update failed") }];
    await expect(completeSession({ sessionId: "s1", score: 8 })).rejects.toThrow("update failed");
  });
});

describe("fetchSessionWithAnswers", () => {
  it("returns the session, its answers, and their questions with sorted choices", async () => {
    const session = { id: "s1" };
    const answers = [{ id: "a1", question_id: "q1" }];
    const questions = [
      {
        id: "q1",
        choices: [
          { id: "c2", order_index: 2 },
          { id: "c1", order_index: 1 },
        ],
      },
    ];
    mock.state.queue = [
      { data: session, error: null },
      { data: answers, error: null },
      { data: questions, error: null },
    ];
    const result = await fetchSessionWithAnswers("s1");
    expect(result.session).toEqual(session);
    expect(result.answers).toEqual(answers);
    expect(result.questions[0]?.choices.map((c) => c.id)).toEqual(["c1", "c2"]);
    expect(mock.state.tables).toEqual(["sessions", "session_answers", "questions"]);
  });

  it("skips the questions query when there are no answers", async () => {
    mock.state.queue = [
      { data: { id: "s1" }, error: null },
      { data: [], error: null },
    ];
    const result = await fetchSessionWithAnswers("s1");
    expect(result.questions).toEqual([]);
    expect(mock.state.tables).toEqual(["sessions", "session_answers"]);
  });

  it("throws when the session query errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("no session") }];
    await expect(fetchSessionWithAnswers("s1")).rejects.toThrow("no session");
  });
});

describe("fetchRequestCategories", () => {
  it("returns rows from the request_categories table", async () => {
    const rows = [{ id: "rc1" }];
    mock.state.queue = [{ data: rows, error: null }];
    await expect(fetchRequestCategories()).resolves.toEqual(rows);
    expect(mock.state.tables).toEqual(["request_categories"]);
  });
});

describe("fetchModuleRequests", () => {
  it("returns rows from the module_requests table", async () => {
    const rows = [{ id: "mr1" }];
    mock.state.queue = [{ data: rows, error: null }];
    await expect(fetchModuleRequests()).resolves.toEqual(rows);
    expect(mock.state.tables).toEqual(["module_requests"]);
  });
});

describe("createModuleRequest", () => {
  it("throws when not signed in", async () => {
    mock.state.user = null;
    await expect(
      createModuleRequest({ categoryId: "rc1", title: "t", description: "d", goal: "g" }),
    ).rejects.toThrow("Not signed in");
  });

  it("inserts and returns the new request", async () => {
    const row = { id: "mr1", title: "t" };
    mock.state.queue = [{ data: row, error: null }];
    await expect(
      createModuleRequest({ categoryId: "rc1", title: "t", description: "d", goal: "g" }),
    ).resolves.toEqual(row);
    expect(mock.state.tables).toEqual(["module_requests"]);
  });
});

describe("fetchLastScoreByModule", () => {
  it("keeps only the most recent score per module and defaults null scores to 0", async () => {
    mock.state.queue = [
      {
        data: [
          { module_id: "m1", score: 9, session_size: 10, completed_at: "2026-08-02" },
          { module_id: "m1", score: 4, session_size: 10, completed_at: "2026-08-01" },
          { module_id: "m2", score: null, session_size: 5, completed_at: "2026-08-03" },
        ],
        error: null,
      },
    ];
    const byModule = await fetchLastScoreByModule();
    expect(byModule).toEqual({
      m1: { moduleId: "m1", score: 9, sessionSize: 10, completedAt: "2026-08-02" },
      m2: { moduleId: "m2", score: 0, sessionSize: 5, completedAt: "2026-08-03" },
    });
  });

  it("throws when the query errors", async () => {
    mock.state.queue = [{ data: null, error: new Error("scores failed") }];
    await expect(fetchLastScoreByModule()).rejects.toThrow("scores failed");
  });
});
