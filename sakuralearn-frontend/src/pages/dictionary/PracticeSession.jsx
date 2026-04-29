import React, { useState, useEffect, useCallback } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import { 
  ChevronLeft, 
  Volume2, 
  CheckCircle2, 
  Trophy,
  Brain,
  HelpCircle
} from 'lucide-react';
import { srsService } from '../../services/srsService';
import { ROUTES } from '../../constants/routes';
import './PracticeSession.css';

const PracticeSession = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);
  
  const mode = queryParams.get('mode') || 'flashcard';
  const folderId = queryParams.get('folderId');
  const srsMode = queryParams.get('srs') !== 'false';

  const [cards, setCards] = useState([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isFlipped, setIsFlipped] = useState(false);
  const [hasFlipped, setHasFlipped] = useState(false);
  const [loading, setLoading] = useState(true);
  const [isFinished, setIsFinished] = useState(false);
  const [stats, setStats] = useState({ reviewed: 0, correct: 0 });
  const [quizOptions, setQuizOptions] = useState([]);
  const [selectedOption, setSelectedOption] = useState(null);
  const [isCorrect, setIsCorrect] = useState(null);

  const fetchCards = useCallback(async () => {
    setLoading(true);
    try {
      const response = await srsService.getDueCards(folderId, srsMode);
      const data = response.data.content;
      setCards(data);
      if (mode === 'quiz' && data.length > 0) {
          generateQuizOptions(data[0], data);
      }
    } catch (err) {
      console.error('Error fetching cards:', err);
    } finally {
      setLoading(false);
    }
  }, [folderId, srsMode, mode]);

  useEffect(() => {
    fetchCards();
  }, [fetchCards]);

  const generateQuizOptions = (currentCard, allCards) => {
      // Pick 3 random wrong answers
      let others = allCards.filter(c => c.id !== currentCard.id);
      let shuffled = others.sort(() => 0.5 - Math.random()).slice(0, 3);
      let options = [...shuffled, currentCard].sort(() => 0.5 - Math.random());
      setQuizOptions(options);
      setSelectedOption(null);
      setIsCorrect(null);
  };

  const handleNext = () => {
    if (currentIndex < cards.length - 1) {
        const nextIndex = currentIndex + 1;
        setCurrentIndex(nextIndex);
        setIsFlipped(false);
        setHasFlipped(false);
        if (mode === 'quiz') {
            generateQuizOptions(cards[nextIndex], cards);
        }
    } else {
        setIsFinished(true);
    }
  };

  const handleRating = async (quality) => {
    const currentCard = cards[currentIndex];
    try {
      await srsService.submitReview(currentCard.id, quality);
      setStats(prev => ({ ...prev, reviewed: prev.reviewed + 1 }));
      handleNext();
    } catch (err) {
      console.error('Error submitting review:', err);
    }
  };

  const handleQuizAnswer = (optionId) => {
      if (selectedOption) return; // Prevent multiple clicks
      setSelectedOption(optionId);
      const correct = optionId === cards[currentIndex].id;
      setIsCorrect(correct);
      if (correct) setStats(prev => ({ ...prev, correct: prev.correct + 1 }));
      
      // Auto move after 1.5s
      setTimeout(() => {
          handleNext();
      }, 1500);
  };

  const playAudio = (text) => {
    if (!text) return;
    window.speechSynthesis.cancel();
    const utterance = new SpeechSynthesisUtterance(text);
    utterance.lang = 'ja-JP';
    window.speechSynthesis.speak(utterance);
  };

  if (loading) return <div className="practice-loading">Đang chuẩn bị bài học...</div>;

  const currentCard = cards[currentIndex];

  return (
    <div className="practice-page">
      <header className="practice-header">
        <button className="back-btn" onClick={() => navigate('/notebook')}>
          <ChevronLeft size={24} /> Thoát
        </button>
        <div className="practice-info">
            <span className="mode-badge">{mode.toUpperCase()}</span>
            <div className="progress-bar-container">
                <div className="progress-fill" style={{ width: `${((currentIndex + 1) / cards.length) * 100}%` }}></div>
            </div>
            <span className="count">{currentIndex + 1}/{cards.length}</span>
        </div>
      </header>

      <main className="practice-main">
        {isFinished || cards.length === 0 ? (
          <div className="practice-finished glass-effect">
            <Trophy size={80} color="#f1c40f" />
            <h1>{cards.length === 0 ? (srsMode ? "Đã hết từ cần ôn!" : "Chưa có từ nào!") : "Hoàn thành!"}</h1>
            <p>
                {cards.length === 0 
                    ? (srsMode 
                        ? "Tuyệt vời! Bạn đã hoàn thành tất cả mục tiêu SRS hôm nay. Hãy quay lại sau hoặc tắt chế độ SRS để ôn tập tự do." 
                        : "Hãy thêm từ vào sổ tay trước khi luyện tập.") 
                    : "Bạn đã hoàn thành phiên luyện tập."}
            </p>
            <button className="back-to-notebook-btn" onClick={() => navigate('/notebook')}>
                Quay lại Sổ tay
            </button>
          </div>
        ) : mode === 'flashcard' ? (
          /* FLASHCARD MODE */
          <div className="flashcard-container">
            <div className={`flip-card ${isFlipped ? 'flipped' : ''}`} onClick={() => {
                setIsFlipped(!isFlipped);
                if (!hasFlipped) setHasFlipped(true);
            }}>
              <div className="flip-card-inner">
                <div className="flip-card-front glass-effect">
                  <h1 className="japanese-text">{currentCard.word}</h1>
                  <p className="hint">Chạm để xem đáp án</p>
                </div>
                <div className="flip-card-back glass-effect">
                  <h2 className="reading">{currentCard.reading}</h2>
                  <button className="audio-btn" onClick={(e) => { e.stopPropagation(); playAudio(currentCard.word); }}>
                    <Volume2 size={24} />
                  </button>
                  <p className="meaning">{currentCard.meaning}</p>
                </div>
              </div>
            </div>
            
            {hasFlipped && (
              <div className="rating-actions">
                {[1, 2, 3, 4, 5].map(q => (
                  <button key={q} className={`rate-btn q${q}`} onClick={() => handleRating(q)}>
                    {q === 1 ? 'Quên' : q === 2 ? 'Khó' : q === 3 ? 'Tốt' : q === 4 ? 'Dễ' : 'Rất dễ'}
                  </button>
                ))}
              </div>
            )}
          </div>
        ) : (
          /* QUIZ MODE */
          <div className="quiz-container">
             <div className="quiz-question glass-effect">
                <h1 className="japanese-text">{currentCard.word}</h1>
                <button className="audio-btn" onClick={() => playAudio(currentCard.word)}>
                    <Volume2 size={24} />
                </button>
             </div>
             <div className="quiz-options">
                {quizOptions.map(option => (
                    <button 
                        key={option.id}
                        className={`option-btn glass-effect ${selectedOption === option.id ? (isCorrect ? 'correct' : 'wrong') : ''}`}
                        onClick={() => handleQuizAnswer(option.id)}
                    >
                        {option.meaning}
                    </button>
                ))}
             </div>
          </div>
        )}
      </main>
    </div>
  );
};

export default PracticeSession;
