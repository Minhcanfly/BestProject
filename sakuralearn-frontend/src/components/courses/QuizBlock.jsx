import React, { useState, useEffect } from 'react';
import { quizService } from '../../services/quizService';
import { CheckCircle, XCircle, ArrowRight, HelpCircle, Trophy, RefreshCw, Star } from 'lucide-react';
import './QuizBlock.css';

const QuizBlock = ({ blockId, onComplete }) => {
  const [quiz, setQuiz] = useState(null);
  const [loading, setLoading] = useState(true);
  const [currentQuestionIdx, setCurrentQuestionIdx] = useState(0);
  const [selectedOption, setSelectedOption] = useState(null);
  const [isAnswerChecked, setIsAnswerChecked] = useState(false);
  const [userAnswers, setUserAnswers] = useState({}); // Store questionId -> answer
  const [isFinished, setIsFinished] = useState(false);
  const [finalScore, setFinalScore] = useState(0);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchQuiz();
  }, [blockId]);

  const fetchQuiz = async () => {
    setLoading(true);
    try {
      const response = await quizService.getQuizByBlock(blockId);
      setQuiz(response.data);
    } catch (err) {
      console.error('Error fetching quiz:', err);
      setError('Không thể tải bài trắc nghiệm.');
    } finally {
      setLoading(false);
    }
  };

  if (loading && !quiz) return <div className="quiz-loader">Đang chuẩn bị câu hỏi...</div>;
  if (error) return <div className="quiz-error">{error}</div>;
  if (!quiz || !quiz.questions || quiz.questions.length === 0) 
    return <div className="quiz-empty">Chưa có câu hỏi cho phần này.</div>;

  const currentQuestion = quiz.questions[currentQuestionIdx];
  const options = JSON.parse(currentQuestion.options || '[]');
  const progress = ((currentQuestionIdx) / quiz.questions.length) * 100;

  const handleOptionSelect = (option) => {
    if (isAnswerChecked) return;
    setSelectedOption(option);
  };

  const handleCheckAnswer = () => {
    if (!selectedOption) return;
    setIsAnswerChecked(true);
    
    setUserAnswers(prev => ({
      ...prev,
      [currentQuestion.id]: selectedOption
    }));
  };

  const handleNextQuestion = () => {
    if (currentQuestionIdx < quiz.questions.length - 1) {
      setCurrentQuestionIdx(prev => prev + 1);
      setSelectedOption(null);
      setIsAnswerChecked(false);
    } else {
      finishQuiz();
    }
  };

  const finishQuiz = async () => {
    setLoading(true);
    try {
      // Calculate score locally for immediate UI
      let correctCount = 0;
      quiz.questions.forEach(q => {
        if (userAnswers[q.id] === q.correctAnswer) {
          correctCount++;
        }
      });

      const score = (correctCount / quiz.questions.length) * 100;
      setFinalScore(score);
      setIsFinished(true);

      // Submit to server
      await quizService.submitQuiz(quiz.id, {
        answers: userAnswers,
        timeTakenSeconds: 0
      });

      if (score >= 70) {
        onComplete(blockId);
      }
    } catch (err) {
      console.error('Error finishing quiz:', err);
    } finally {
      setLoading(false);
    }
  };

  const handleRetry = () => {
    setCurrentQuestionIdx(0);
    setSelectedOption(null);
    setIsAnswerChecked(false);
    setUserAnswers({});
    setIsFinished(false);
    setFinalScore(0);
  };

  if (isFinished) {
    return (
      <div className="quiz-block-container">
        <div className="quiz-result-summary">
          <div className="result-icon-wrapper">
            {finalScore >= 70 ? <Trophy size={60} /> : <Star size={60} />}
          </div>
          <div className="result-score">{Math.round(finalScore)}%</div>
          <p className="result-msg">
            {finalScore >= 70 
              ? 'Tuyệt vời! Bạn đã hoàn thành bài tập xuất sắc.' 
              : 'Cố gắng lên! Bạn cần đạt ít nhất 70% để hoàn thành bài này.'}
          </p>
          
          <div className="result-stats">
            <div className="stat-item-mini">
              <span>Đúng</span>
              <b>{quiz.questions.filter(q => userAnswers[q.id] === q.correctAnswer).length}</b>
            </div>
            <div className="stat-item-mini">
              <span>Tổng câu</span>
              <b>{quiz.questions.length}</b>
            </div>
          </div>

          <button className="btn-quiz-primary btn-quiz-check" onClick={handleRetry} style={{ margin: '0 auto' }}>
            <RefreshCw size={18} /> Làm lại bài tập
          </button>
        </div>
      </div>
    );
  }

  const isCorrect = selectedOption === currentQuestion.correctAnswer;

  return (
    <div className="quiz-block-container">
      <div className="quiz-header">
        <div className="quiz-progress-wrapper">
          <div className="quiz-q-counter">Câu hỏi {currentQuestionIdx + 1} / {quiz.questions.length}</div>
          <div className="quiz-progress-bar">
            <div className="quiz-progress-fill" style={{ width: `${progress}%` }}></div>
          </div>
        </div>
      </div>

      <div className="quiz-question-active" key={currentQuestionIdx}>
        <p className="q-text">{currentQuestion.questionText}</p>
        
        <div className="q-options-grid">
          {options.map((opt, idx) => {
            const isSelected = selectedOption === opt;
            let optClass = isSelected ? 'selected' : '';
            if (isAnswerChecked) {
              if (opt === currentQuestion.correctAnswer) optClass = 'correct-opt';
              else if (isSelected) optClass = 'wrong-opt';
            }

            return (
              <button 
                key={idx}
                className={`opt-btn-premium ${optClass}`}
                onClick={() => handleOptionSelect(opt)}
                disabled={isAnswerChecked}
              >
                <span className="opt-label-premium">{String.fromCharCode(65 + idx)}</span>
                <span className="opt-text">{opt}</span>
              </button>
            );
          })}
        </div>
      </div>

      {isAnswerChecked && (
        <div className={`quiz-feedback-area ${isCorrect ? 'feedback-correct' : 'feedback-wrong'}`}>
          <div className="feedback-header">
            {isCorrect ? <CheckCircle size={24} /> : <XCircle size={24} />}
            {isCorrect ? 'Chính xác!' : 'Chưa đúng rồi...'}
          </div>
          {currentQuestion.explanation && (
            <div className="feedback-explanation">{currentQuestion.explanation}</div>
          )}
        </div>
      )}

      <div className="quiz-footer">
        {!isAnswerChecked ? (
          <button 
            className="btn-quiz-primary btn-quiz-check" 
            onClick={handleCheckAnswer}
            disabled={!selectedOption}
          >
            Kiểm tra
          </button>
        ) : (
          <button className="btn-quiz-primary btn-quiz-next" onClick={handleNextQuestion}>
            {currentQuestionIdx < quiz.questions.length - 1 ? 'Tiếp tục' : 'Hoàn thành'} <ArrowRight size={18} />
          </button>
        )}
      </div>
    </div>
  );
};

export default QuizBlock;
