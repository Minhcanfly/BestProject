import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { 
  ChevronLeft, 
  ChevronRight, 
  MoreHorizontal,
  Volume2,
  BookOpen
} from 'lucide-react';
import { dictionaryService } from '../../services/dictionaryService';
import DictionaryDetailPopup from '../../components/dictionary/DictionaryDetailPopup';
import { ROUTES } from '../../constants/routes';
import './DictionaryList.css';

const DictionaryList = () => {
  const { category, level } = useParams();
  const navigate = useNavigate();
  
  const [items, setItems] = useState([]);
  const [loading, setLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(0);
  const [selectedItem, setSelectedItem] = useState(null);

  useEffect(() => {
    fetchItems();
  }, [category, level, page]);

  const fetchItems = async () => {
    setLoading(true);
    try {
      let response;
      if (category === 'vocab') response = await dictionaryService.getVocabList(level, page);
      else if (category === 'kanji') response = await dictionaryService.getKanjiList(level, page);
      else if (category === 'grammar') response = await dictionaryService.getGrammarList(level, page);
      
      setItems(response.data.content);
      setTotalPages(response.data.totalPages);
    } catch (err) {
      console.error('Error fetching items:', err);
    } finally {
      setLoading(false);
    }
  };

  const getTitle = () => {
    const catMap = { vocab: 'Từ vựng', kanji: 'Hán tự', grammar: 'Ngữ pháp' };
    return `${catMap[category]} ${level}`;
  };

  const getItemMainText = (item) => {
    if (category === 'vocab') return item.wordJa;
    if (category === 'kanji') return item.character;
    if (category === 'grammar') return item.patternJa;
    return '';
  };

  const getItemSubText = (item) => {
    if (category === 'vocab') return item.reading;
    if (category === 'kanji') return item.meaningVi;
    if (category === 'grammar') return item.explanationVi;
    return '';
  };

  const playAudio = (e, text) => {
    e.stopPropagation();
    if ('speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      const utterance = new SpeechSynthesisUtterance(text);
      utterance.lang = 'ja-JP';
      utterance.rate = 0.9;
      window.speechSynthesis.speak(utterance);
    }
  };

  const renderPagination = () => {
    if (totalPages <= 1) return null;

    const pages = [];
    const maxVisiblePages = 5;
    let startPage = Math.max(0, page - Math.floor(maxVisiblePages / 2));
    let endPage = Math.min(totalPages - 1, startPage + maxVisiblePages - 1);

    if (endPage - startPage + 1 < maxVisiblePages) {
      startPage = Math.max(0, endPage - maxVisiblePages + 1);
    }

    if (startPage > 0) {
      pages.push(
        <button key="first" className="pag-num" onClick={() => setPage(0)}>1</button>
      );
      if (startPage > 1) {
        pages.push(<span key="ellipsis1" className="pag-ellipsis">...</span>);
      }
    }

    for (let i = startPage; i <= endPage; i++) {
      pages.push(
        <button 
          key={i} 
          className={`pag-num ${page === i ? 'active' : ''}`}
          onClick={() => setPage(i)}
        >
          {i + 1}
        </button>
      );
    }

    if (endPage < totalPages - 1) {
      if (endPage < totalPages - 2) {
        pages.push(<span key="ellipsis2" className="pag-ellipsis">...</span>);
      }
      pages.push(
        <button key="last" className="pag-num" onClick={() => setPage(totalPages - 1)}>{totalPages}</button>
      );
    }

    return (
      <div className="advanced-pagination">
        <button className="pag-nav" disabled={page === 0} onClick={() => setPage(0)}>
          &laquo;
        </button>
        <button className="pag-nav" disabled={page === 0} onClick={() => setPage(p => p - 1)}>
          &lsaquo;
        </button>
        
        <div className="pag-numbers">
          {pages}
        </div>

        <button className="pag-nav" disabled={page === totalPages - 1} onClick={() => setPage(p => p + 1)}>
          &rsaquo;
        </button>
        <button className="pag-nav" disabled={page === totalPages - 1} onClick={() => setPage(totalPages - 1)}>
          &raquo;
        </button>
      </div>
    );
  };

  return (
    <div className="dictionary-list-page">
      <header className="list-header">
        <button className="back-btn" onClick={() => navigate(ROUTES.LIBRARY)}>
          <ChevronLeft size={24} /> Quay lại
        </button>
        <div className="title-section">
          <h1>{getTitle()}</h1>
          <span className="count-badge">{items.length} mục trên trang này</span>
        </div>
      </header>

      {loading ? (
        <div className="list-loading"><div className="loader"></div></div>
      ) : (
        <div className="list-grid modern-scroll">
          {items.map((item) => (
            <div 
              key={item.id} 
              className={`dictionary-item-card glass-effect category-${category}`}
              onClick={() => setSelectedItem(item.id)}
            >
              <div className="item-main">
                <span className="main-text japanese-text">{getItemMainText(item)}</span>
                <span className="sub-text" dangerouslySetInnerHTML={{ __html: getItemSubText(item) }}></span>
              </div>
              <div className="item-actions">
                <button 
                  className="icon-btn audio-trigger" 
                  onClick={(e) => playAudio(e, getItemMainText(item))}
                  title="Nghe phát âm"
                >
                  <Volume2 size={18} />
                </button>
                <button className="icon-btn" onClick={(e) => e.stopPropagation()}>
                  <MoreHorizontal size={18} />
                </button>
              </div>
            </div>
          ))}
        </div>
      )}

      {renderPagination()}

      {selectedItem && (
        <DictionaryDetailPopup 
          type={category} 
          id={selectedItem} 
          onClose={() => setSelectedItem(null)} 
        />
      )}
    </div>
  );
};

export default DictionaryList;
