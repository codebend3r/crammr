import { useEffect, useRef } from "react";
import { useLocation } from "wouter";
import { LogOut } from "lucide-react";
import { useSessionStore } from "@/store/sessionStore";
import { completeSession, recordAnswer } from "@/lib/queries";
import { ProgressBar } from "@/components/ProgressBar";
import { MultipleChoice } from "@/modes/MultipleChoice/MultipleChoice";
import { Flashcards } from "@/modes/Flashcards/Flashcards";
import { Recap } from "@/modes/Recap/Recap";
import styles from "@/routes/QuizPage/QuizPage.module.css";

type Params = {
  slug: string;
};

export function QuizPage({ params }: { params: Params }) {
  const session = useSessionStore((s) => s.sessions[params.slug]);
  const record = useSessionStore((s) => s.recordAnswer);
  const advance = useSessionStore((s) => s.advance);
  const setIndex = useSessionStore((s) => s.setIndex);
  const [, navigate] = useLocation();

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
      const sid = session.sessionId;
      const score = session.answers.filter((a) => a.isCorrect).length;
      (async () => {
        await completeSession({ sessionId: sid, score });
        navigate(`/m/${params.slug}/results/${sid}`, { replace: true });
      })();
      return;
    }
    if (session.currentIndex < session.answers.length) {
      setIndex(params.slug, session.answers.length);
    }
  }, [session, params.slug, navigate, setIndex]);

  if (!session || session.questions.length === 0) return null;

  const { sessionId, mode, questions, currentIndex, answers } = session;
  if (currentIndex >= questions.length) return null;

  const question = questions[currentIndex];
  const total = questions.length;

  const finishIfDone = async (latestAnswers: typeof answers) => {
    if (latestAnswers.length !== total) return;
    const score = latestAnswers.filter((a) => a.isCorrect).length;
    await completeSession({ sessionId, score });
    navigate(`/m/${params.slug}/results/${sessionId}`, { replace: true });
  };

  const handleMc = async (payload: {
    choiceId: string;
    isCorrect: boolean;
  }) => {
    record(params.slug, {
      questionId: question.id,
      choiceId: payload.choiceId,
      selfGrade: null,
      isCorrect: payload.isCorrect,
    });
    await recordAnswer({
      sessionId,
      questionId: question.id,
      choiceId: payload.choiceId,
      selfGrade: null,
      isCorrect: payload.isCorrect,
    });
  };

  const handleSelfGrade = async (payload: {
    selfGrade: boolean;
    isCorrect: boolean;
  }) => {
    record(params.slug, {
      questionId: question.id,
      choiceId: null,
      selfGrade: payload.selfGrade,
      isCorrect: payload.isCorrect,
    });
    await recordAnswer({
      sessionId,
      questionId: question.id,
      choiceId: null,
      selfGrade: payload.selfGrade,
      isCorrect: payload.isCorrect,
    });
  };

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
        />
      ) : mode === "flashcards" ? (
        <Flashcards
          question={question}
          onAnswer={handleSelfGrade}
          onNext={handleNext}
        />
      ) : (
        <Recap
          question={question}
          onAnswer={handleSelfGrade}
          onNext={handleNext}
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
