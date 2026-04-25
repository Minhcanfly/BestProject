import React from 'react';
import { Plus, Trash2, CheckCircle2, AlertCircle } from 'lucide-react';
import './QuizEditor.css';

const QuizEditor = ({ questions, setQuestions }) => {
  const addQuestion = () => {
    setQuestions([
      ...questions,
      {
        questionText: '',
        options: ['', '', '', ''],
        correctAnswer: '',
        explanation: '',
        points: 1
      }
    ]);
  };

  const removeQuestion = (index) => {
    const newQuestions = [...questions];
    newQuestions.splice(index, 1);
    setQuestions(newQuestions);
  };

  const updateQuestion = (index, field, value) => {
    const newQuestions = [...questions];
    newQuestions[index][field] = value;
    setQuestions(newQuestions);
  };

  const updateOption = (qIdx, oIdx, value) => {
    const newQuestions = [...questions];
    newQuestions[qIdx].options[oIdx] = value;
    setQuestions(newQuestions);
  };

  return (
    <div className="quiz-editor-container">
      <div className="quiz-editor-header">
        <h4><CheckCircle2 size={18} /> Thiết lập câu hỏi trắc nghiệm</h4>
        <button type="button" className="add-q-btn" onClick={addQuestion}>
          <Plus size={16} /> Thêm câu hỏi
        </button>
      </div>

      {questions.length === 0 && (
        <div className="empty-quiz-msg">
          <AlertCircle size={40} />
          <p>Chưa có câu hỏi nào. Hãy nhấn "Thêm câu hỏi" để bắt đầu.</p>
        </div>
      )}

      <div className="questions-list-editor">
        {questions.map((q, qIdx) => (
          <div key={qIdx} className="question-edit-card glass-effect-light">
            <div className="q-card-header">
              <span className="q-number">Câu hỏi {qIdx + 1}</span>
              <button type="button" className="remove-q-btn" onClick={() => removeQuestion(qIdx)}>
                <Trash2 size={16} />
              </button>
            </div>

            <div className="edit-group">
              <label>Nội dung câu hỏi</label>
              <textarea 
                value={q.questionText} 
                onChange={(e) => updateQuestion(qIdx, 'questionText', e.target.value)}
                placeholder="Ví dụ: Ý nghĩa của từ 'Sakura' là gì?"
              />
            </div>

            <div className="options-grid-edit">
              {q.options.map((opt, oIdx) => (
                <div key={oIdx} className={`option-edit-item ${q.correctAnswer === opt && opt !== '' ? 'is-correct' : ''}`}>
                  <label>Đáp án {String.fromCharCode(65 + oIdx)}</label>
                  <div className="option-input-wrapper">
                    <input 
                      type="text" 
                      value={opt} 
                      onChange={(e) => updateOption(qIdx, oIdx, e.target.value)}
                      placeholder={`Lựa chọn ${oIdx + 1}...`}
                    />
                    <button 
                      type="button"
                      className={`set-correct-btn ${q.correctAnswer === opt && opt !== '' ? 'active' : ''}`}
                      onClick={() => updateQuestion(qIdx, 'correctAnswer', opt)}
                      title="Đánh dấu là đáp án đúng"
                    >
                      <CheckCircle2 size={18} />
                    </button>
                  </div>
                </div>
              ))}
            </div>

            <div className="edit-group">
              <label>Giải thích (Không bắt buộc)</label>
              <input 
                type="text" 
                value={q.explanation} 
                onChange={(e) => updateQuestion(qIdx, 'explanation', e.target.value)}
                placeholder="Giải thích tại sao đáp án này đúng..."
              />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default QuizEditor;
