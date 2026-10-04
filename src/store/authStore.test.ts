import type { Session, User } from "@supabase/supabase-js";
import { beforeEach, describe, expect, it, vi } from "vitest";
import { useAuthStore } from "@/store/authStore";
import { useSessionStore } from "@/store/sessionStore";

const mock = vi.hoisted(() => {
  type StoredSession = { user: { id: string } } | null;
  type AuthChangeHandler = (event: string, session: StoredSession) => void;
  type MockState = {
    session: StoredSession;
    error: Error | null;
    handler: AuthChangeHandler | null;
    calls: string[];
    resetRedirect: string | null;
  };

  const state: MockState = {
    session: null,
    error: null,
    handler: null,
    calls: [],
    resetRedirect: null,
  };

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
    location: { origin: "http://localhost:5173" },
    matchMedia: () => ({ matches: true }),
  });

  return { state };
});

vi.mock("@/lib/supabase", () => ({
  supabase: {
    auth: {
      getSession: () => {
        mock.state.calls.push("getSession");
        return Promise.resolve({ data: { session: mock.state.session } });
      },
      onAuthStateChange: (
        handler: (event: string, session: { user: { id: string } } | null) => void,
      ) => {
        mock.state.handler = handler;
        return { data: { subscription: { unsubscribe: () => undefined } } };
      },
      signInWithPassword: () => {
        mock.state.calls.push("signInWithPassword");
        return Promise.resolve({ error: mock.state.error });
      },
      signUp: () => {
        mock.state.calls.push("signUp");
        return Promise.resolve({ error: mock.state.error });
      },
      signInWithOtp: () => {
        mock.state.calls.push("signInWithOtp");
        return Promise.resolve({ error: mock.state.error });
      },
      signOut: () => {
        mock.state.calls.push("signOut");
        return Promise.resolve({ error: mock.state.error });
      },
      resetPasswordForEmail: (_email: string, options: { redirectTo: string }) => {
        mock.state.calls.push("resetPasswordForEmail");
        mock.state.resetRedirect = options.redirectTo;
        return Promise.resolve({ error: mock.state.error });
      },
      updateUser: () => {
        mock.state.calls.push("updateUser");
        return Promise.resolve({ error: mock.state.error });
      },
    },
  },
}));

const user: User = {
  id: "user-1",
  app_metadata: {},
  user_metadata: {},
  aud: "authenticated",
  created_at: "2026-08-01T00:00:00Z",
};

const session: Session = {
  access_token: "access",
  refresh_token: "refresh",
  expires_in: 3600,
  token_type: "bearer",
  user,
};

beforeEach(() => {
  mock.state.session = null;
  mock.state.error = null;
  mock.state.handler = null;
  mock.state.calls = [];
  mock.state.resetRedirect = null;
});

describe("useAuthStore", () => {
  it("bootstrap marks the user unauthenticated when there is no session", async () => {
    await useAuthStore.getState().bootstrap();
    expect(useAuthStore.getState().status).toBe("unauthenticated");
    expect(useAuthStore.getState().user).toBeNull();
  });

  it("bootstrap marks the user authenticated and follows auth state changes", async () => {
    mock.state.session = session;
    await useAuthStore.getState().bootstrap();
    expect(useAuthStore.getState().status).toBe("authenticated");
    expect(useAuthStore.getState().user?.id).toBe("user-1");

    mock.state.handler?.("SIGNED_OUT", null);
    expect(useAuthStore.getState().status).toBe("unauthenticated");
    expect(useAuthStore.getState().session).toBeNull();
  });

  it("signIn resolves on success and throws on error", async () => {
    await expect(useAuthStore.getState().signIn("a@b.co", "pw")).resolves.toBeUndefined();
    mock.state.error = new Error("bad credentials");
    await expect(useAuthStore.getState().signIn("a@b.co", "pw")).rejects.toThrow("bad credentials");
  });

  it("signUp resolves on success and throws on error", async () => {
    await expect(useAuthStore.getState().signUp("a@b.co", "pw")).resolves.toBeUndefined();
    mock.state.error = new Error("email taken");
    await expect(useAuthStore.getState().signUp("a@b.co", "pw")).rejects.toThrow("email taken");
  });

  it("signInWithMagicLink resolves on success and throws on error", async () => {
    await expect(useAuthStore.getState().signInWithMagicLink("a@b.co")).resolves.toBeUndefined();
    expect(mock.state.calls).toContain("signInWithOtp");
    mock.state.error = new Error("otp failed");
    await expect(useAuthStore.getState().signInWithMagicLink("a@b.co")).rejects.toThrow(
      "otp failed",
    );
  });

  it("signOut clears local sessions and signs out of supabase", async () => {
    useSessionStore.getState().start("javascript", {
      sessionId: "s1",
      moduleId: "m1",
      mode: "multiple_choice",
      questions: [],
    });
    await useAuthStore.getState().signOut();
    expect(useSessionStore.getState().sessions).toEqual({});
    expect(mock.state.calls).toContain("signOut");
  });

  it("sendPasswordReset emails a link back to the reset page and throws on error", async () => {
    await expect(useAuthStore.getState().sendPasswordReset("a@b.co")).resolves.toBeUndefined();
    expect(mock.state.calls).toContain("resetPasswordForEmail");
    expect(mock.state.resetRedirect).toBe("http://localhost:5173/reset-password");
    mock.state.error = new Error("rate limited");
    await expect(useAuthStore.getState().sendPasswordReset("a@b.co")).rejects.toThrow(
      "rate limited",
    );
  });

  it("updatePassword resolves on success and throws on error", async () => {
    await expect(useAuthStore.getState().updatePassword("new-pw")).resolves.toBeUndefined();
    expect(mock.state.calls).toContain("updateUser");
    mock.state.error = new Error("weak password");
    await expect(useAuthStore.getState().updatePassword("new-pw")).rejects.toThrow("weak password");
  });

  it("signOut throws when supabase errors", async () => {
    mock.state.error = new Error("network");
    await expect(useAuthStore.getState().signOut()).rejects.toThrow("network");
  });
});
