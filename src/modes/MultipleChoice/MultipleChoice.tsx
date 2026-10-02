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
  codeLanguage?: string;
};

export function MultipleChoice({ question, onAnswer, onNext, codeLanguage }: Props) {
  const choices = useMemo(() => shuffle(question.choices), [question.choices]);
  const [selectedId, setSelectedId] = useState<string | null>(null);

  const correctId = choices.find((c) => c.is_correct)?.id ?? null;
  const locked = selectedId !== null;

  const handlePick = async (choiceId: string) => {
    if (locked) return;
    const isCorrect = choiceId === correctId;
    setSelectedId(choiceId);
    await onAnswer({ choiceId, isCorrect });
  };

  const handleNext = () => {
    setSelectedId(null);
    onNext();
  };

  return (
    <div className={styles.wrap}>
      <section className={styles.prompt} aria-label="Question">
        <Markdown codeLanguage={codeLanguage}>{question.prompt}</Markdown>
      </section>
      <div className={styles.choices}>
        {choices.map((c) => {
          const cls = !locked
            ? styles.choice
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
              disabled={locked}
            >
              <Markdown inline>{c.label}</Markdown>
            </button>
          );
        })}
      </div>
      {locked && question.explanation ? (
        <div className={styles.explanation}>
          <Markdown codeLanguage={codeLanguage}>{question.explanation}</Markdown>
        </div>
      ) : null}
      {locked ? (
        <Button onClick={handleNext} block>
          Next
        </Button>
      ) : null}
    </div>
  );
}
