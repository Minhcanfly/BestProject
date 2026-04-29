import React, { useState, useEffect, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import { 
  Languages, 
  Type, 
  BookText, 
  Search,
  ArrowRight,
  X,
  Volume2
} from 'lucide-react';
import { dictionaryService } from '../../services/dictionaryService';
import { ROUTES } from '../../constants/routes';
import DictionaryDetailPopup from '../../components/dictionary/DictionaryDetailPopup';
import './Library.css';

const Library = () => {
  const [cards, setCards] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState(null);
  const [searching, setSearching] = useState(false);
  const [selectedItem, setSelectedItem] = useState(null);
  
  const navigate = useNavigate();

  useEffect(() => {
    const fetchLibrary = async () => {
      try {
        const response = await dictionaryService.getLibrary();
        setCards(response.data);
      } catch (err) {
        console.error('Error fetching library stats:', err);
      } finally {
        setLoading(false);
      }
    };
    fetchLibrary();
  }, []);

  // Debounced search logic
  useEffect(() => {
    const timer = setTimeout(() => {
      if (searchQuery.trim().length >= 1) {
        handleSearch();
      } else {
        setSearchResults(null);
      }
    }, 500);

    return () => clearTimeout(timer);
  }, [searchQuery]);

  const handleSearch = async () => {
    setSearching(true);
    try {
      const response = await dictionaryService.searchGlobal(searchQuery);
      setSearchResults(response.data);
    } catch (err) {
      console.error('Search error:', err);
    } finally {
      setSearching(false);
    }
  };

  const getIcon = (category) => {
    switch (category.toUpperCase()) {
      case 'VOCAB': return <Languages size={24} />;
      case 'KANJI': return <Type size={24} />;
      case 'GRAMMAR': return <BookText size={24} />;
      default: return <Languages size={24} />;
    }
  };

  const getCategoryColor = (category) => {
    switch (category.toUpperCase()) {
      case 'VOCAB': return '#48dbfb';
      case 'KANJI': return '#1dd1a1';
      case 'GRAMMAR': return '#feca57';
      default: return '#ee5253';
    }
  };

  const handleCardClick = (category, level) => {
    navigate(ROUTES.DICTIONARY_LIST(category.toLowerCase(), level));
  };

  const renderSearchResult = (type, items) => {
    if (!items || items.content.length === 0) return null;
    
    const titles = { kanji: 'Hán tự', vocab: 'Từ vựng', grammar: 'Ngữ pháp' };
    
    return (
      <div className="search-result-group">
        <h3>{titles[type]}</h3>
        <div className="search-items-list">
          {items.content.slice(0, 5).map(item => (
            <div 
                key={item.id} 
                className="search-item-row glass-effect"
                onClick={() => setSelectedItem({ type, id: item.id })}
            >
              <div className="search-item-main">
                <span className="search-item-ja japanese-text">
                  {type === 'kanji' ? item.character : (type === 'vocab' ? item.wordJa : item.patternJa)}
                </span>
                <span className="search-item-vi">
                  {type === 'kanji' ? item.meaningVi : (type === 'vocab' ? item.meaningVi : item.explanationVi)}
                </span>
              </div>
              <div className="search-item-meta">
                <span className="level-tag">{item.jlptLevel}</span>
                <ArrowRight size={14} />
              </div>
            </div>
          ))}
        </div>
      </div>
    );
  };

  return (
    <div className="library-container">
      <header className="library-header">
        <div className="header-content">
          <h1>Thư viện kiến thức 📚</h1>
          <p>Tra cứu từ điển JLPT thông minh, tích hợp lộ trình học cá nhân.</p>
        </div>
        <div className="search-box-container glass-effect">
          <Search size={20} className="search-icon" />
          <input 
            type="text" 
            placeholder="Tìm Kanji, từ vựng, ngữ pháp..." 
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
          />
          {searchQuery && (
              <button className="clear-search" onClick={() => setSearchQuery('')}>
                <X size={18} />
              </button>
          )}
        </div>
      </header>

      {searchQuery.trim().length > 0 ? (
        <div className="search-results-overlay">
          {searching ? (
             <div className="searching-spinner"><div className="loader-small"></div> Đang tìm kiếm...</div>
          ) : searchResults ? (
            <div className="search-results-content modern-scroll">
              {renderSearchResult('kanji', searchResults.kanji)}
              {renderSearchResult('vocab', searchResults.vocab)}
              {renderSearchResult('grammar', searchResults.grammar)}
              
              {!searchResults.kanji.content.length && 
               !searchResults.vocab.content.length && 
               !searchResults.grammar.content.length && (
                <div className="no-results">Không tìm thấy kết quả nào cho "{searchQuery}"</div>
              )}
            </div>
          ) : null}
        </div>
      ) : loading ? (
        <div className="library-loading">
          <div className="loader"></div>
          <p>Đang tải dữ liệu thư viện...</p>
        </div>
      ) : (
        <div className="library-sections fade-in">
          {['N5', 'N4', 'N3', 'N2', 'N1'].map(level => (
            <div key={level} className="level-section">
              <h2 className="level-title">Trình độ {level}</h2>
              <div className="cards-grid">
                {cards
                  .filter(card => card.level === level)
                  .map((card, index) => (
                    <div 
                      key={index} 
                      className="lib-card glass-effect"
                      onClick={() => handleCardClick(card.category, card.level)}
                    >
                      <div 
                        className="lib-card-icon" 
                        style={{ 
                          backgroundColor: `${getCategoryColor(card.category)}15`,
                          color: getCategoryColor(card.category) 
                        }}
                      >
                        {getIcon(card.category)}
                      </div>
                      <div className="lib-card-info">
                        <h3>{card.title}</h3>
                        <p>{card.totalItems} mục</p>
                      </div>
                      <div className="lib-card-action">
                        <ArrowRight size={18} />
                      </div>
                    </div>
                  ))}
              </div>
            </div>
          ))}
        </div>
      )}

      {selectedItem && (
          <DictionaryDetailPopup 
            type={selectedItem.type} 
            id={selectedItem.id} 
            onClose={() => setSelectedItem(null)} 
          />
      )}
    </div>
  );
};

export default Library;
