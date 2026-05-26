import { useEffect, useMemo, useState } from "react";
import { Link, useLocation } from "wouter";
import {
  fetchModules,
  fetchLastScoreByModule,
  type LastScore,
} from "@/lib/queries";
import type { Mode, Module } from "@/lib/types";
import { Card } from "@/components/Card";
import { Button } from "@/components/Button";
import { useSessionStore } from "@/store/sessionStore";
import styles from "@/routes/HomePage/HomePage.module.css";

const MODE_LABEL: Record<Mode, string> = {
  multiple_choice: "Multiple choice",
  flashcards: "Flashcards",
  recap: "Recap",
};

export function HomePage() {
  const [modules, setModules] = useState<Module[]>([]);
  const [lastScores, setLastScores] = useState<Record<string, LastScore>>({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [, navigate] = useLocation();

  const sessions = useSessionStore((s) => s.sessions);
  const discard = useSessionStore((s) => s.discard);

  useEffect(() => {
    const state = { alive: true };
    (async () => {
      try {
        const [ms, ls] = await Promise.all([
          fetchModules(),
          fetchLastScoreByModule(),
        ]);
        if (!state.alive) return;
        setModules(ms);
        setLastScores(ls);
      } catch (e) {
        if (!state.alive) return;
        setError(e instanceof Error ? e.message : "Failed to load");
      } finally {
        if (state.alive) setLoading(false);
      }
    })();
    return () => {
      state.alive = false;
    };
  }, []);

  const inProgress = useMemo(() => {
    const moduleBySlug = new Map(modules.map((m) => [m.slug, m]));
    return Object.values(sessions)
      .filter((s) => s.answers.length < s.questions.length)
      .map((s) => ({ session: s, module: moduleBySlug.get(s.slug) ?? null }))
      .filter(
        (p): p is { session: typeof p.session; module: Module } =>
          p.module !== null
      )
      .sort((a, b) => b.session.startedAt - a.session.startedAt);
  }, [sessions, modules]);

  if (loading) return <div className={styles.state}>Loading…</div>;
  if (error) return <div className={styles.state}>Error: {error}</div>;

  return (
    <div className={styles.page}>
      {inProgress.length > 0 ? (
        <div className={styles.resumeList}>
          {inProgress.map(({ session, module }) => (
            <Card key={session.slug} className={styles.resume}>
              <div className={styles.resumeBody}>
                <div className={styles.resumeLabel}>In progress</div>
                <h2 className={styles.resumeTitle}>{module.name}</h2>
                <p className={styles.resumeMeta}>
                  {session.answers.length} of {session.questions.length}{" "}
                  answered · {MODE_LABEL[session.mode]}
                </p>
              </div>
              <div className={styles.resumeActions}>
                <Button variant="ghost" onClick={() => discard(session.slug)}>
                  Discard
                </Button>
                <Button onClick={() => navigate(`/m/${module.slug}/quiz`)}>
                  Resume
                </Button>
              </div>
            </Card>
          ))}
        </div>
      ) : null}
      <h1 className={styles.heading}>What are we locking in today?</h1>
      <div className={styles.grid}>
        {modules.map((m) => {
          const last = lastScores[m.id];
          return (
            <Link key={m.id} href={`/m/${m.slug}`} className={styles.cardLink}>
              <Card className={styles.card}>
                <div className={styles.badgeRow}>
                  <span className={styles.badge} data-type={m.type}>
                    {m.type}
                  </span>
                  <span className={styles.count}>
                    {m.total_questions} questions
                  </span>
                </div>
                <h2 className={styles.name}>{m.name}</h2>
                <p className={styles.desc}>{m.description}</p>
                {last ? (
                  <div className={styles.last}>
                    Last score: {last.score} / {last.sessionSize}
                  </div>
                ) : (
                  <div className={styles.last}>Not yet attempted</div>
                )}
              </Card>
            </Link>
          );
        })}
      </div>
    </div>
  );
}
