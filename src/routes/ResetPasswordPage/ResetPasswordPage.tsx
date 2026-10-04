import { useState } from "react";
import { Link, useLocation } from "wouter";
import { useAuthStore } from "@/store/authStore";
import { Button } from "@/components/Button";
import { Card } from "@/components/Card";
import styles from "@/routes/ResetPasswordPage/ResetPasswordPage.module.scss";

export function ResetPasswordPage() {
  const status = useAuthStore((s) => s.status);
  const updatePassword = useAuthStore((s) => s.updatePassword);
  const [, navigate] = useLocation();

  const [password, setPassword] = useState("");
  const [confirmation, setConfirmation] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Supabase signs the user in from the emailed link, so without a session
  // the link was invalid, expired, or already used.
  if (status !== "authenticated") {
    return (
      <div className={styles.page}>
        <Card className={styles.card}>
          <h1 className={styles.title}>Reset link expired</h1>
          <p className={styles.subtitle}>
            This password reset link is invalid or has already been used. Request a new one from the
            sign-in page.
          </p>
          <Link href="/login" className={styles.link}>
            Back to sign in
          </Link>
        </Card>
      </div>
    );
  }

  const submit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (password !== confirmation) {
      setError("The passwords don't match.");
      return;
    }
    setBusy(true);
    setError(null);
    try {
      await updatePassword(password);
      navigate("/", { replace: true });
    } catch (e) {
      setError(e instanceof Error ? e.message : "Something went wrong");
      setBusy(false);
    }
  };

  return (
    <div className={styles.page}>
      <Card className={styles.card}>
        <h1 className={styles.title}>Choose a new password</h1>
        <form className={styles.form} onSubmit={submit}>
          <label className={styles.label}>
            New password
            <input
              type="password"
              required
              minLength={6}
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className={styles.input}
              autoComplete="new-password"
            />
          </label>
          <label className={styles.label}>
            Confirm new password
            <input
              type="password"
              required
              minLength={6}
              value={confirmation}
              onChange={(e) => setConfirmation(e.target.value)}
              className={styles.input}
              autoComplete="new-password"
            />
          </label>

          {error ? <div className={styles.error}>{error}</div> : null}

          <Button type="submit" block disabled={busy}>
            {busy ? "Saving…" : "Save password"}
          </Button>
        </form>
      </Card>
    </div>
  );
}
