import { useEffect, useMemo, useState } from "react";
import {
  createModuleRequest,
  fetchModuleRequests,
  fetchRequestCategories,
} from "@/lib/queries";
import type { ModuleRequest, RequestCategory } from "@/lib/types";
import { useAuthStore } from "@/store/authStore";
import { Card } from "@/components/Card";
import { Button } from "@/components/Button";
import styles from "@/routes/ModuleRequestsPage/ModuleRequestsPage.module.css";

type Filter = "all" | "mine";

const dateFmt = new Intl.DateTimeFormat(undefined, {
  dateStyle: "medium",
});

export function ModuleRequestsPage() {
  const user = useAuthStore((s) => s.user);
  const [categories, setCategories] = useState<RequestCategory[]>([]);
  const [requests, setRequests] = useState<ModuleRequest[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const [filter, setFilter] = useState<Filter>("all");

  const [title, setTitle] = useState("");
  const [categoryId, setCategoryId] = useState("");
  const [description, setDescription] = useState("");
  const [goal, setGoal] = useState("");
  const [submitting, setSubmitting] = useState(false);
  const [formError, setFormError] = useState<string | null>(null);
  const [formSuccess, setFormSuccess] = useState(false);

  useEffect(() => {
    const state = { alive: true };
    (async () => {
      try {
        const [cats, reqs] = await Promise.all([
          fetchRequestCategories(),
          fetchModuleRequests(),
        ]);
        if (!state.alive) return;
        setCategories(cats);
        setRequests(reqs);
        if (cats[0]) setCategoryId(cats[0].id);
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

  const categoryById = useMemo(
    () => new Map(categories.map((c) => [c.id, c])),
    [categories]
  );

  const visibleRequests = useMemo(() => {
    if (filter === "mine") {
      if (!user) return [];
      return requests.filter((r) => r.user_id === user.id);
    }
    return requests;
  }, [requests, filter, user]);

  const submit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!title.trim() || !categoryId) return;
    setSubmitting(true);
    setFormError(null);
    setFormSuccess(false);
    try {
      const created = await createModuleRequest({
        categoryId,
        title: title.trim(),
        description: description.trim(),
        goal: goal.trim(),
      });
      setRequests((rs) => [created, ...rs]);
      setTitle("");
      setDescription("");
      setGoal("");
      setFormSuccess(true);
    } catch (e) {
      setFormError(e instanceof Error ? e.message : "Failed to submit");
    } finally {
      setSubmitting(false);
    }
  };

  if (loading) return <div className={styles.state}>Loading…</div>;
  if (error) return <div className={styles.state}>Error: {error}</div>;

  return (
    <div className={styles.page}>
      <h1 className={styles.heading}>Request a learning module</h1>
      <p className={styles.subtitle}>
        Don't see what you want to study? Suggest a new module — anyone signed
        in can read every request.
      </p>

      <Card className={styles.formCard}>
        <h2 className={styles.formTitle}>New request</h2>
        <form className={styles.form} onSubmit={submit}>
          <label className={styles.field}>
            <span className={styles.label}>Title</span>
            <input
              type="text"
              required
              value={title}
              onChange={(e) => setTitle(e.target.value)}
              className={styles.input}
              maxLength={120}
              placeholder="e.g. Rust fundamentals"
            />
          </label>
          <label className={styles.field}>
            <span className={styles.label}>Category</span>
            <select
              required
              value={categoryId}
              onChange={(e) => setCategoryId(e.target.value)}
              className={styles.input}
            >
              {categories.map((c) => (
                <option key={c.id} value={c.id}>
                  {c.name}
                </option>
              ))}
            </select>
          </label>
          <label className={styles.field}>
            <span className={styles.label}>Description</span>
            <textarea
              value={description}
              onChange={(e) => setDescription(e.target.value)}
              className={styles.textarea}
              maxLength={1000}
              rows={3}
              placeholder="What does this module cover?"
            />
          </label>
          <label className={styles.field}>
            <span className={styles.label}>Goal</span>
            <textarea
              value={goal}
              onChange={(e) => setGoal(e.target.value)}
              className={styles.textarea}
              maxLength={500}
              rows={2}
              placeholder="What should someone be able to do after completing it?"
            />
          </label>
          {formError ? (
            <div className={styles.error}>{formError}</div>
          ) : null}
          {formSuccess ? (
            <div className={styles.success}>Request submitted.</div>
          ) : null}
          <div className={styles.actions}>
            <Button
              type="submit"
              disabled={submitting || !title.trim() || !categoryId}
            >
              {submitting ? "Submitting…" : "Submit request"}
            </Button>
          </div>
        </form>
      </Card>

      <div className={styles.listHead}>
        <h2 className={styles.listTitle}>Requests</h2>
        <div className={styles.filterGroup} role="radiogroup" aria-label="Filter">
          <button
            type="button"
            role="radio"
            aria-checked={filter === "all"}
            onClick={() => setFilter("all")}
            className={filter === "all" ? styles.filterActive : styles.filter}
          >
            All people
          </button>
          <button
            type="button"
            role="radio"
            aria-checked={filter === "mine"}
            onClick={() => setFilter("mine")}
            className={filter === "mine" ? styles.filterActive : styles.filter}
          >
            My requests
          </button>
        </div>
      </div>

      {visibleRequests.length === 0 ? (
        <Card className={styles.empty}>
          <p className={styles.emptyText}>
            {filter === "mine"
              ? "You haven't requested anything yet."
              : "No requests yet — be the first."}
          </p>
        </Card>
      ) : (
        <div className={styles.list}>
          {visibleRequests.map((r) => {
            const category = categoryById.get(r.category_id);
            const mine = user?.id === r.user_id;
            return (
              <Card key={r.id} className={styles.item}>
                <div className={styles.itemHead}>
                  {category ? (
                    <span className={styles.categoryBadge}>{category.name}</span>
                  ) : null}
                  {mine ? <span className={styles.youBadge}>You</span> : null}
                  <span className={styles.itemDate}>
                    {dateFmt.format(new Date(r.created_at))}
                  </span>
                </div>
                <h3 className={styles.itemTitle}>{r.title}</h3>
                {r.description ? (
                  <p className={styles.itemBody}>{r.description}</p>
                ) : null}
                {r.goal ? (
                  <p className={styles.itemGoal}>
                    <strong>Goal:</strong> {r.goal}
                  </p>
                ) : null}
              </Card>
            );
          })}
        </div>
      )}
    </div>
  );
}
