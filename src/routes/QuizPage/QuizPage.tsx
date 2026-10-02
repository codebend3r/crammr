import { useEffect, useRef, useState } from "react";
import { useLocation } from "wouter";
import { LogOut } from "lucide-react";
import { useSessionStore, type RecordedAnswer } from "@/store/sessionStore";
import { completeSession, recordAnswer, syncAnswers } from "@/lib/queries";
import { codeLanguageForModule } from "@/lib/codeLanguages";
import { Button } from "@/components/Button";
import { Card } from "@/components/Card";
import { ProgressBar } from "@/components/ProgressBar";
import { MultipleChoice } from "@/modes/MultipleChoice/MultipleChoice";
import { Flashcards } from "@/modes/Flashcards/Flashcards";
import { Recap } from "@/modes/Recap/Recap";
import styles from "@/routes/QuizPage/QuizPage.module.css";

type Params = {
  slug: string;
};

async function saveAndComplete({
  sessionId,
  answers,
}: {
  sessionId: string;
  answers: RecordedAnswer[];
}): Promise<void> {
  await syncAnswers({ sessionId, answers });
  await completeSession({ sessionId, score: answers.filter((a) => a.isCorrect).length });
}

const errorMessage = (e: unknown) => (e instanceof Error ? e.message : "Something went wrong");

export function QuizPage({ params }: { params: Params }) {
  const session = useSessionStore((s) => s.sessions[params.slug]);
  const record = useSessionStore((s) => s.recordAnswer);
  const advance = useSessionStore((s) => s.advance);
  const setIndex = useSessionStore((s) => s.setIndex);
  const [, navigate] = useLocation();
  const [saveError, setSaveError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  const hasSession = !!session && session.questions.length > 0;

  useEffect(() => {
    if (!hasSession) {
      navigate(`/m/${params.slug}`, { replace: true });
    }
  }, [hasSession, navigate, params.slug]);

  const normalizedRef = useRef(false);
  useEffect(() => {
    if (normalizedRef.current) return;
    if (!session || session.questions.length === 0) return;
    normalizedRef.current = true;
    if (session.answers.length >= session.questions.length) {
      const { sessionId, answers } = session;
      void (async () => {
        try {
          await saveAndComplete({ sessionId, answers });
          navigate(`/m/${params.slug}/results/${sessionId}`, { replace: true });
        } catch (e) {
          setSaveError(errorMessage(e));
        }
      })();
      return;
    }
    if (session.currentIndex < session.answers.length) {
      setIndex(params.slug, session.answers.length);
    }
  }, [session, params.slug, navigate, setIndex]);

  if (!session || session.questions.length === 0) return null;

  const { sessionId, mode, questions, currentIndex, answers } = session;

  const finish = async (latestAnswers: RecordedAnswer[]) => {
    setSaving(true);
    setSaveError(null);
    try {
      await saveAndComplete({ sessionId, answers: latestAnswers });
      navigate(`/m/${params.slug}/results/${sessionId}`, { replace: true });
    } catch (e) {
      setSaveError(errorMessage(e));
    } finally {
      setSaving(false);
    }
  };

  if (saveError) {
    return (
      <div className={styles.page}>
        <Card className={styles.saveError}>
          <p className={styles.saveErrorText}>
            We couldn't save your results ({saveError}). Your answers are still on this device.
          </p>
          <Button onClick={() => void finish(answers)} disabled={saving}>
            {saving ? "Saving…" : "Try again"}
          </Button>
        </Card>
      </div>
    );
  }

  if (currentIndex >= questions.length) return null;

  const question = questions[currentIndex];
  const total = questions.length;
  const codeLanguage = codeLanguageForModule({ slug: params.slug });

  const finishIfDone = async (latestAnswers: RecordedAnswer[]) => {
    if (latestAnswers.length !== total) return;
    await finish(latestAnswers);
  };

  const saveAnswer = async (answer: RecordedAnswer) => {
    record(params.slug, answer);
    try {
      await recordAnswer({ sessionId, ...answer });
    } catch {
      // The answer stays in the local session, and finish() saves every
      // answer again before completing, so a dropped request isn't lost.
    }
  };

  const handleMc = (payload: { choiceId: string; isCorrect: boolean }) =>
    saveAnswer({
      questionId: question.id,
      choiceId: payload.choiceId,
      selfGrade: null,
      isCorrect: payload.isCorrect,
    });

  const handleSelfGrade = (payload: { selfGrade: boolean; isCorrect: boolean }) =>
    saveAnswer({
      questionId: question.id,
      choiceId: null,
      selfGrade: payload.selfGrade,
      isCorrect: payload.isCorrect,
    });

  const handleNext = async () => {
    advance(params.slug);
    const next = useSessionStore.getState().sessions[params.slug];
    if (next) await finishIfDone(next.answers);
  };

  const handleExit = () => navigate("/");

  return (
    <div className={styles.page}>
      <div className={styles.top}>
        <span className={styles.counter}>
          Question {currentIndex + 1} of {total}
        </span>
        <ProgressBar
          current={currentIndex + (answers.length > currentIndex ? 1 : 0)}
          total={total}
        />
      </div>

      {mode === "multiple_choice" ? (
        <MultipleChoice
          question={question}
          onAnswer={handleMc}
          onNext={handleNext}
          codeLanguage={codeLanguage}
        />
      ) : mode === "flashcards" ? (
        <Flashcards
          question={question}
          onAnswer={handleSelfGrade}
          onNext={handleNext}
          codeLanguage={codeLanguage}
        />
      ) : (
        <Recap
          question={question}
          onAnswer={handleSelfGrade}
          onNext={handleNext}
          codeLanguage={codeLanguage}
        />
      )}

      <div className={styles.bottom}>
        <button
          type="button"
          className={styles.exit}
          onClick={handleExit}
          title="Save progress and return home"
        >
          <LogOut size={16} />
          <span>Save &amp; exit</span>
        </button>
      </div>
    </div>
  );
}
