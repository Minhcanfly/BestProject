import React, { useState, useEffect } from 'react';
import { quizService } from '../../services/quizService';
import { CheckCircle, XCircle, Send, HelpCircle, Trophy } from 'lucide-react';
import './QuizBlock.css';

const QuizBlock = ({ blockId, onComplete }) => {
  const [quiz, setQuiz] = useState(null);
  const [loading, setLoading] = useState(true);
  const [answers, setAnswers] = useState({});
  const [submitted, setSubmitted] = useState(false);
  const [result, setResult] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchQuiz();
  }, [blockId]);

  const fetchQuiz = async () => {
    setLoading(true);
    try {
      const response = await quizService.getQuizByBlock(blockId);
      setQuiz(response.data);
      // Try to get previous result if any
    } catch (err) {
      console.error('Error fetching quiz:', err);
      setError('Không thể tải bài trắc nghiệm.');
    } finally {
      setLoading(false);
    }
  };

  const handleOptionSelect = (questionId, option) => {
    if (submitted) return;
    setAnswers(prev => ({ ...prev, [questionId]: option }));
  };

  const handleSubmit = async () => {
    if (Object.keys(answers).length < quiz.questions.length) {
      alert('Vui lòng hoàn thành tất cả câu hỏi!');
      return;
    }

    setLoading(true);
    try {
      const response = await quizService.submitQuiz(quiz.id, {
        answers,
        timeTakenSeconds: 0 // Track later
      });
      setResult(response.data);
      setSubmitted(true);
      
      if (response.data.score >= 70) {
        onComplete(blockId);
      }
    } catch (err) {
      console.error('Error submitting quiz:', err);
      alert('Lỗi khi nộp bài!');
    } finally {
      setLoading(false);
    }
  };

  if (loading && !quiz) return <div className="quiz-loader">Đang tải câu hỏi...</div>;
  if (error) return <div className="quiz-error">{error}</div>;
  if (!quiz) return <div className="quiz-empty">Chưa có câu hỏi cho phần này.</div>;

  return (
    <div className="quiz-block-container glass-effect">
      <div className="quiz-header">
        <h3><HelpCircle size={20} /> {quiz.title}</h3>
        {submitted && (
          <div className={`quiz-score-badge ${result.score >= 70 ? 'pass' : 'fail'}`}>
            {result.score >= 70 ? <Trophy size={16} /> : null} {Math.round(result.score)}%
          </div>
        )}
      </div>

      <div className="quiz-questions">
        {quiz.questions.map((q, idx) => {
          const options = JSON.parse(q.options || '[]');
          const isCorrect = submitted && answers[q.id] === q.correctAnswer;
          const isWrong = submitted && answers[q.id] !== q.correctAnswer;

          return (
            <div key={q.id} className={`quiz-question-unit ${submitted ? (isCorrect ? 'correct' : 'wrong') : ''}`}>
              <p className="q-text"><b>Câu {idx + 1}:</b> {q.questionText}</p>
              <div className="q-options">
                {options.map((opt, oIdx) => {
                  const isSelected = answers[q.id] === opt;
                  let optClass = isSelected ? 'selected' : '';
                  if (submitted) {
                    if (opt === q.correctAnswer) optClass = 'correct-opt';
                    else if (isSelected) optClass = 'wrong-opt';
                  }

                  return (
                    <button 
                      key={oIdx} 
                      className={`opt-btn ${optClass}`}
                      onClick={() => handleOptionSelect(q.id, opt)}
                      disabled={submitted}
                    >
                      <span className="opt-label">{String.fromCharCode(65 + oIdx)}</span>
                      <span className="opt-text">{opt}</span>
                      {submitted && opt === q.correctAnswer && <CheckCircle size={16} className="status-icon" />}
                      {submitted && isSelected && opt !== q.correctAnswer && <XCircle size={16} className="status-icon" />}
                    </button>
                  );
                })}
              </div>
              {submitted && q.explanation && (
                <div className="q-explanation">
                  <b>Giải thích:</b> {q.explanation}
                </div>
              )}
            </div>
          );
        })}
      </div>

      {!submitted ? (
        <button className="quiz-submit-btn" onClick={handleSubmit} disabled={loading}>
          {loading ? 'Đang nộp...' : <><Send size={18} /> Nộp bài</>}
        </button>
      ) : (
        <button className="quiz-retry-btn" onClick={() => { setSubmitted(false); setAnswers({}); setResult(null); }}>
          Làm lại
        </button>
      )}
    </div>
  );
};

export default QuizBlock;
