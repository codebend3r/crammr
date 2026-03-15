import { Question, UserAnswer } from '../types/quiz';
import { CheckCircle, XCircle, RotateCcw, Award } from 'lucide-react';

interface ResultsProps {
  userAnswers: UserAnswer[];
  questions: Question[];
  onRestart: () => void;
}

export default function Results({ userAnswers, questions, onRestart }: ResultsProps) {
  const correctAnswers = userAnswers.filter((answer) => answer.isCorrect).length;
  const totalQuestions = questions.length;
  const percentage = Math.round((correctAnswers / totalQuestions) * 100);
  const passed = percentage >= 80;

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 py-8 px-4">
      <div className="max-w-4xl mx-auto">
        <div className="bg-white rounded-xl shadow-xl overflow-hidden">
          <div className={`px-6 py-8 ${passed ? 'bg-gradient-to-r from-green-500 to-green-600' : 'bg-gradient-to-r from-red-500 to-red-600'}`}>
            <div className="text-center text-white">
              <Award className="w-20 h-20 mx-auto mb-4" />
              <h1 className="text-3xl font-bold mb-2">
                {passed ? 'Congratulations!' : 'Keep Practicing!'}
              </h1>
              <p className="text-lg opacity-90">
                {passed
                  ? 'You passed the Ontario G1 Driver\'s Test!'
                  : 'You need 80% or higher to pass. Review and try again.'}
              </p>
            </div>
          </div>

          <div className="p-8">
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
              <div className="bg-blue-50 rounded-lg p-6 text-center">
                <div className="text-4xl font-bold text-blue-600 mb-2">{percentage}%</div>
                <div className="text-gray-600 font-medium">Your Score</div>
              </div>
              <div className="bg-green-50 rounded-lg p-6 text-center">
                <div className="text-4xl font-bold text-green-600 mb-2">{correctAnswers}</div>
                <div className="text-gray-600 font-medium">Correct Answers</div>
              </div>
              <div className="bg-red-50 rounded-lg p-6 text-center">
                <div className="text-4xl font-bold text-red-600 mb-2">
                  {totalQuestions - correctAnswers}
                </div>
                <div className="text-gray-600 font-medium">Incorrect Answers</div>
              </div>
            </div>

            <div className="border-t border-gray-200 pt-8">
              <h2 className="text-2xl font-bold text-gray-800 mb-6">Question Review</h2>
              <div className="space-y-4">
                {questions.map((question, index) => {
                  const userAnswer = userAnswers[index];
                  const isCorrect = userAnswer?.isCorrect;

                  return (
                    <div
                      key={question.id}
                      className={`border-2 rounded-lg p-5 ${
                        isCorrect
                          ? 'border-green-200 bg-green-50'
                          : 'border-red-200 bg-red-50'
                      }`}
                    >
                      <div className="flex items-start gap-3 mb-3">
                        {isCorrect ? (
                          <CheckCircle className="w-6 h-6 text-green-600 flex-shrink-0 mt-1" />
                        ) : (
                          <XCircle className="w-6 h-6 text-red-600 flex-shrink-0 mt-1" />
                        )}
                        <div className="flex-1">
                          <p className="font-semibold text-gray-800 mb-2">
                            {index + 1}. {question.question}
                          </p>
                          <div className="space-y-2 text-sm">
                            <p className="text-gray-700">
                              <span className="font-medium">Your answer:</span>{' '}
                              <span className={isCorrect ? 'text-green-700' : 'text-red-700'}>
                                {userAnswer?.selectedAnswer} -{' '}
                                {question[`option_${userAnswer?.selectedAnswer.toLowerCase()}` as keyof Question] as string}
                              </span>
                            </p>
                            {!isCorrect && (
                              <p className="text-gray-700">
                                <span className="font-medium">Correct answer:</span>{' '}
                                <span className="text-green-700">
                                  {question.correct_answer} -{' '}
                                  {question[`option_${question.correct_answer.toLowerCase()}` as keyof Question] as string}
                                </span>
                              </p>
                            )}
                          </div>
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>

            <div className="mt-8 text-center">
              <button
                onClick={onRestart}
                className="inline-flex items-center gap-2 px-8 py-4 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg shadow-lg hover:shadow-xl transition-all duration-200"
              >
                <RotateCcw className="w-5 h-5" />
                Take Test Again
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
