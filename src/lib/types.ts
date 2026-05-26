export type ModuleType = "static" | "dynamic";

export type Mode = "multiple_choice" | "flashcards" | "recap";

export type Module = {
  id: string;
  slug: string;
  name: string;
  description: string;
  type: ModuleType;
  total_questions: number;
  created_at: string;
};

export type QuestionChoice = {
  id: string;
  question_id: string;
  label: string;
  is_correct: boolean;
  order_index: number;
};

export type Question = {
  id: string;
  module_id: string;
  category: string | null;
  prompt: string;
  explanation: string | null;
  flashcard_back: string;
  recap_answer: string;
  order_index: number;
  created_at: string;
  choices: QuestionChoice[];
};

export type Session = {
  id: string;
  user_id: string;
  module_id: string;
  mode: Mode;
  session_size: number;
  started_at: string;
  completed_at: string | null;
  score: number | null;
};

export type SessionAnswer = {
  id: string;
  session_id: string;
  question_id: string;
  choice_id: string | null;
  self_grade: boolean | null;
  is_correct: boolean;
  answered_at: string;
};
