import { useState } from 'react';
import { Question } from '../types/quiz';

interface QuestionCardProps {
  question: Question;
  onAnswer: (answer: 'A' | 'B' | 'C' | 'D') => void;
  questionNumber: number;
}

export default function QuestionCard({ question, onAnswer, questionNumber }: QuestionCardProps) {
  const [selectedAnswer, setSelectedAnswer] = useState<'A' | 'B' | 'C' | 'D' | null>(null);

  const handleSelect = (answer: 'A' | 'B' | 'C' | 'D') => {
    setSelectedAnswer(answer);
  };

  const handleSubmit = () => {
    if (selectedAnswer) {
      onAnswer(selectedAnswer);
      setSelectedAnswer(null);
    }
  };

  const options = [
    { letter: 'A' as const, text: question.option_a },
    { letter: 'B' as const, text: question.option_b },
    { letter: 'C' as const, text: question.option_c },
    { letter: 'D' as const, text: question.option_d },
  ];

  return (
    <div className="space-y-6">
      <div>
        <span className="inline-block px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-sm font-medium mb-4">
          {question.category.charAt(0).toUpperCase() + question.category.slice(1)}
        </span>
        <h2 className="text-xl font-semibold text-gray-800 leading-relaxed">
          {questionNumber}. {question.question}
        </h2>
      </div>

      <div className="space-y-3">
        {options.map((option) => (
          <button
            key={option.letter}
            onClick={() => handleSelect(option.letter)}
            className={`w-full text-left p-4 rounded-lg border-2 transition-all duration-200 ${
              selectedAnswer === option.letter
                ? 'border-blue-600 bg-blue-50 shadow-md'
                : 'border-gray-200 bg-white hover:border-blue-300 hover:bg-blue-50'
            }`}
          >
            <div className="flex items-start gap-3">
              <span
                className={`flex-shrink-0 w-8 h-8 rounded-full flex items-center justify-center font-bold text-sm ${
                  selectedAnswer === option.letter
                    ? 'bg-blue-600 text-white'
                    : 'bg-gray-200 text-gray-700'
                }`}
              >
                {option.letter}
              </span>
              <span className="text-gray-700 pt-1">{option.text}</span>
            </div>
          </button>
        ))}
      </div>

      <button
        onClick={handleSubmit}
        disabled={!selectedAnswer}
        className={`w-full py-4 rounded-lg font-semibold text-white transition-all duration-200 ${
          selectedAnswer
            ? 'bg-blue-600 hover:bg-blue-700 shadow-lg hover:shadow-xl'
            : 'bg-gray-300 cursor-not-allowed'
        }`}
      >
        Submit Answer
      </button>
    </div>
  );
}
