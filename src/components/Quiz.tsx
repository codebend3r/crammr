import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import { Question, UserAnswer } from '../types/quiz';
import QuestionCard from './QuestionCard';
import Results from './Results';
import { BookOpen } from 'lucide-react';

export default function Quiz() {
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [userAnswers, setUserAnswers] = useState<UserAnswer[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [showResults, setShowResults] = useState(false);

  useEffect(() => {
    fetchQuestions();
  }, []);

  const fetchQuestions = async () => {
    setIsLoading(true);
    const { data, error } = await supabase
      .from('questions')
      .select('*')
      .order('created_at', { ascending: true });

    if (error) {
      console.error('Error fetching questions:', error);
    } else if (data) {
      setQuestions(data);
    }
    setIsLoading(false);
  };

  const handleAnswer = (answer: 'A' | 'B' | 'C' | 'D') => {
    const currentQuestion = questions[currentQuestionIndex];
    const isCorrect = answer === currentQuestion.correct_answer;

    const newAnswer: UserAnswer = {
      questionId: currentQuestion.id,
      selectedAnswer: answer,
      isCorrect,
    };

    setUserAnswers([...userAnswers, newAnswer]);

    if (currentQuestionIndex < questions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
    } else {
      setShowResults(true);
    }
  };

  const restartQuiz = () => {
    setCurrentQuestionIndex(0);
    setUserAnswers([]);
    setShowResults(false);
    fetchQuestions();
  };

  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-16 w-16 border-b-4 border-blue-600 mx-auto mb-4"></div>
          <p className="text-gray-600 text-lg">Loading questions...</p>
        </div>
      </div>
    );
  }

  if (questions.length === 0) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 flex items-center justify-center p-4">
        <div className="bg-white rounded-xl shadow-xl p-8 text-center max-w-md">
          <BookOpen className="w-16 h-16 text-red-500 mx-auto mb-4" />
          <h2 className="text-2xl font-bold text-gray-800 mb-2">No Questions Available</h2>
          <p className="text-gray-600">Please contact your administrator to add quiz questions.</p>
        </div>
      </div>
    );
  }

  if (showResults) {
    return (
      <Results
        userAnswers={userAnswers}
        questions={questions}
        onRestart={restartQuiz}
      />
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 py-8 px-4">
      <div className="max-w-3xl mx-auto">
        <div className="bg-white rounded-xl shadow-xl overflow-hidden">
          <div className="bg-gradient-to-r from-blue-600 to-blue-700 px-6 py-4">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-3">
                <BookOpen className="w-8 h-8 text-white" />
                <h1 className="text-2xl font-bold text-white">Ontario G1 Driver's Test</h1>
              </div>
              <div className="text-white text-sm font-medium bg-blue-800 px-4 py-2 rounded-full">
                Question {currentQuestionIndex + 1} of {questions.length}
              </div>
            </div>
          </div>

          <div className="p-6">
            <div className="mb-4">
              <div className="h-2 bg-gray-200 rounded-full overflow-hidden">
                <div
                  className="h-full bg-blue-600 transition-all duration-300 ease-out"
                  style={{
                    width: `${((currentQuestionIndex + 1) / questions.length) * 100}%`,
                  }}
                ></div>
              </div>
            </div>

            <QuestionCard
              question={questions[currentQuestionIndex]}
              onAnswer={handleAnswer}
              questionNumber={currentQuestionIndex + 1}
            />
          </div>
        </div>
      </div>
    </div>
  );
}
