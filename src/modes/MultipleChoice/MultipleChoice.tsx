import { useMemo, useState } from "react";
import type { Question } from "@/lib/types";
import { shuffle } from "@/lib/sampling";
import { Button } from "@/components/Button";
import { Markdown } from "@/components/Markdown";
import styles from "@/modes/MultipleChoice/MultipleChoice.module.css";

export type AnswerPayload = {
  choiceId: string;
  isCorrect: boolean;
};

type Props = {
  question: Question;
  onAnswer: (payload: AnswerPayload) => Promise<void>;
  onNext: () => void;
};

export function MultipleChoice({ question, onAnswer, onNext }: Props) {
  const choices = useMemo(() => shuffle(question.choices), [question.choices]);
  const [selectedId, setSelectedId] = useState<string | null>(null);
  const [confirmed, setConfirmed] = useState(false);

  const correctId = choices.find((c) => c.is_correct)?.id ?? null;

  const handlePick = (choiceId: string) => {
    if (confirmed) return;
    setSelectedId(choiceId);
  };

  const handleConfirm = async () => {
    if (confirmed || selectedId === null) return;
    setConfirmed(true);
    await onAnswer({ choiceId: selectedId, isCorrect: selectedId === correctId });
  };

  const handleNext = () => {
    setSelectedId(null);
    setConfirmed(false);
    onNext();
  };

  return (
    <div className={styles.wrap}>
      <h2 className={styles.prompt}>
        <Markdown inline>{question.prompt}</Markdown>
      </h2>
      <div className={styles.choices}>
        {choices.map((c) => {
          const cls = !confirmed
            ? c.id === selectedId
              ? styles.selected
              : styles.choice
            : c.id === correctId
            ? styles.correct
            : c.id === selectedId
            ? styles.incorrect
            : styles.dim;
          return (
            <button
              key={c.id}
              type="button"
              className={cls}
              onClick={() => handlePick(c.id)}
              disabled={confirmed}
              aria-pressed={!confirmed && c.id === selectedId}
            >
              {c.label}
            </button>
          );
        })}
      </div>
      {confirmed && question.explanation ? (
        <div className={styles.explanation}>
          <Markdown>{question.explanation}</Markdown>
        </div>
      ) : null}
      {confirmed ? (
        <Button onClick={handleNext} block>
          Next
        </Button>
      ) : (
        <Button onClick={handleConfirm} block disabled={selectedId === null}>
          Confirm answer
        </Button>
      )}
    </div>
  );
}
