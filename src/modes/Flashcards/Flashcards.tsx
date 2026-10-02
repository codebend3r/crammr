import { useState } from "react";
import type { Question } from "@/lib/types";
import { Button } from "@/components/Button";
import { Markdown } from "@/components/Markdown";
import styles from "@/modes/Flashcards/Flashcards.module.scss";

export type AnswerPayload = {
  selfGrade: boolean;
  isCorrect: boolean;
};

type Props = {
  question: Question;
  onAnswer: (payload: AnswerPayload) => Promise<void>;
  onNext: () => void;
  codeLanguage?: string;
};

export function Flashcards({ question, onAnswer, onNext, codeLanguage }: Props) {
  const [flipped, setFlipped] = useState(false);
  const [graded, setGraded] = useState(false);

  const grade = async (gotIt: boolean) => {
    if (graded) return;
    setGraded(true);
    await onAnswer({ selfGrade: gotIt, isCorrect: gotIt });
  };

  const handleNext = () => {
    setFlipped(false);
    setGraded(false);
    onNext();
  };

  return (
    <div className={styles.wrap}>
      <div className={styles.card}>
        <div className={styles.face}>
          <span className={styles.faceLabel}>{flipped ? "Answer" : "Question"}</span>
          <div className={styles.faceText}>
            <Markdown codeLanguage={codeLanguage}>
              {flipped ? question.flashcard_back : question.prompt}
            </Markdown>
          </div>
        </div>
        <button
          type="button"
          className={styles.flip}
          onClick={() => setFlipped((value) => !value)}
          aria-pressed={flipped}
        >
          {flipped ? "Flip back to question" : "Reveal answer"}
        </button>
      </div>
      {flipped && !graded ? (
        <div className={styles.gradeRow}>
          <Button variant="danger" onClick={() => grade(false)}>
            Missed it
          </Button>
          <Button onClick={() => grade(true)}>Got it</Button>
        </div>
      ) : null}
      {graded ? (
        <Button onClick={handleNext} block>
          Next
        </Button>
      ) : null}
    </div>
  );
}
