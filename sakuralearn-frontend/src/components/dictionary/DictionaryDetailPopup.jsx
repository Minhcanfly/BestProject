import React, { useState, useEffect } from 'react';
import { X, Volume2, Bookmark, Share2, Info, ArrowRight, Brain, PlusCircle, CheckCircle2 } from 'lucide-react';
import { dictionaryService } from '../../services/dictionaryService';
import { notebookService } from '../../services/notebookService';
import SaveToNotebookPopup from './SaveToNotebookPopup';
import './DictionaryDetailPopup.css';

const DictionaryDetailPopup = ({ type, id, onClose }) => {
  const [data, setData] = useState(null);
  const [relatedVocab, setRelatedVocab] = useState([]);
  const [loading, setLoading] = useState(true);
  const [actionStatus, setActionStatus] = useState({ notebook: false });
  const [isSavePopupOpen, setIsSavePopupOpen] = useState(false);

  useEffect(() => {
    const fetchDetail = async () => {
      setLoading(true);
      try {
        let response;
        if (type === 'vocab') response = await dictionaryService.getVocabDetail(id);
        else if (type === 'kanji') {
            response = await dictionaryService.getKanjiDetail(id);
            // Fetch related vocab for Kanji
            const relatedRes = await dictionaryService.getRelatedVocab(response.data.character);
            setRelatedVocab(relatedRes.data);
        }
        else if (type === 'grammar') response = await dictionaryService.getGrammarDetail(id);
        
        setData(response.data);
      } catch (err) {
        console.error('Error fetching detail:', err);
      } finally {
        setLoading(false);
      }
    };
    fetchDetail();
  }, [type, id]);

  if (!id) return null;

  const handleAddToNotebook = () => {
    setIsSavePopupOpen(true);
  };

  const onSaveToNotebookSuccess = () => {
    setActionStatus(prev => ({ ...prev, notebook: true }));
    setTimeout(() => setActionStatus(prev => ({ ...prev, notebook: false })), 2000);
  };

  const playAudio = (text) => {
    if (!text) return;
    if ('speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      const utterance = new SpeechSynthesisUtterance(text);
      utterance.lang = 'ja-JP';
      utterance.rate = 0.9;
      window.speechSynthesis.speak(utterance);
    }
  };

  const getPosLabel = (pos) => {
    if (!pos) return 'Từ vựng';
    const mapping = {
      'n': 'Danh từ',
      'v1': 'Động từ nhóm 1 (V-ru)',
      'v5': 'Động từ nhóm 5',
      'v5u': 'Động từ (u)',
      'v5k': 'Động từ (ku)',
      'v5g': 'Động từ (gu)',
      'v5s': 'Động từ (su)',
      'v5t': 'Động từ (tsu)',
      'v5n': 'Động từ (nu)',
      'v5b': 'Động từ (bu)',
      'v5m': 'Động từ (mu)',
      'v5r': 'Động từ (ru)',
      'adj-i': 'Tính từ đuôi -i',
      'adj-na': 'Tính từ đuôi -na',
      'adv': 'Phó từ',
      'pn': 'Đại từ',
      'int': 'Thán từ',
      'exp': 'Cụm từ',
      'vt': 'Tha động từ',
      'vi': 'Tự động từ'
    };
    
    // Check if it's a combination (e.g. "n, vs")
    const parts = pos.split(',').map(p => p.trim());
    const labels = parts.map(p => {
        for (let key in mapping) {
            if (p.startsWith(key)) return mapping[key];
        }
        return p;
    });
    
    return labels.join(' • ');
  };

  const renderContent = () => {
    if (loading) return <div className="popup-loader"><div className="loader-small"></div></div>;
    if (!data) return <div className="popup-error">Không tìm thấy dữ liệu.</div>;

    if (type === 'vocab') {
      return (
        <div className="detail-content">
          <div className="detail-header">
            <div className="main-word">
              <h1 className="japanese-text">{data.wordJa}</h1>
              <button onClick={() => playAudio(data.wordJa)} className="audio-btn" title="Nghe phát âm">
                <Volume2 size={24} />
              </button>
            </div>
            <p className="reading-text">【{data.reading}】</p>
            <div className="badge-row">
              <span className="pos-badge">{getPosLabel(data.partOfSpeech)}</span>
              <span className="level-badge">{data.jlptLevel}</span>
            </div>
          </div>
          
          <div className="info-card">
            <h4 className="section-label">Nghĩa tiếng Việt</h4>
            <p className="primary-meaning">{data.meaningVi || data.meaningEn || 'Chưa có bản dịch tiếng Việt'}</p>
          </div>

          {data.mnemonicVi && (
            <div className="info-card mnemonic-card">
              <h4 className="section-label">💡 Mẹo nhớ (Mnemonics)</h4>
              <p className="mnemonic-text">{data.mnemonicVi}</p>
            </div>
          )}

          <div className="info-card">
            <h4 className="section-label">Ví dụ minh họa</h4>
            <div className="examples-list">
              {data.exampleSentences && Array.isArray(data.exampleSentences) && data.exampleSentences.length > 0 ? (
                data.exampleSentences.slice(0, 3).map((ex, i) => (
                  <div key={i} className="example-item">
                    <p className="ex-ja japanese-text">{ex.ja}</p>
                    <p className="ex-vi">{ex.vi}</p>
                  </div>
                ))
              ) : (
                <div className="empty-placeholder">
                  <Info size={16} />
                  <span>Hệ thống đang cập nhật ví dụ cho từ này...</span>
                </div>
              )}
            </div>
          </div>

          {data.synonyms && data.synonyms.length > 0 && (
            <div className="info-card">
              <h4 className="section-label">Từ đồng nghĩa</h4>
              <div className="synonyms-list">
                {data.synonyms.map((s, i) => <span key={i} className="synonym-tag">{s}</span>)}
              </div>
            </div>
          )}
        </div>
      );
    }

    if (type === 'kanji') {
      return (
        <div className="detail-content">
          <div className="detail-header kanji-page-header">
            <div className="kanji-display-wrapper">
                <div className="kanji-large-display japanese-text" title="Nhấn để nghe">
                    {data.character}
                </div>
                <div className="stroke-order-display">
                    <img 
                        src={`https://raw.githubusercontent.com/KanjiVG/kanjivg/master/kanji/${data.character.charCodeAt(0).toString(16).padStart(5, '0')}.svg`} 
                        alt={`Stroke order for ${data.character}`}
                        onError={(e) => e.target.style.display = 'none'}
                    />
                    <span className="stroke-hint">Thứ tự nét</span>
                </div>
            </div>
            <div className="kanji-header-info">
              <h1 className="kanji-meaning-title">{data.meaningVi || data.meaningEn}</h1>
              <div className="kanji-meta">
                <span className="level-pill">{data.jlptLevel}</span>
                <span className="stroke-pill">{data.strokeCount} nét</span>
              </div>
            </div>
          </div>
          
          <div className="readings-container">
            <div className="reading-block onyomi">
              <span className="label">Âm On (Onyomi)</span>
              <p className="japanese-text">{data.onyomi?.join('、 ') || '---'}</p>
            </div>
            <div className="reading-block kunyomi">
              <span className="label">Âm Kun (Kunyomi)</span>
              <p className="japanese-text">{data.kunyomi?.join('、 ') || '---'}</p>
            </div>
          </div>

          {data.mnemonicVi && (
            <div className="info-card mnemonic-card">
              <h4 className="section-label">💡 Mẹo nhớ (Mnemonics)</h4>
              <p className="mnemonic-text">{data.mnemonicVi}</p>
            </div>
          )}

          {(data.radical || (data.components && data.components.length > 0)) && (
            <div className="kanji-info-row components-section">
              <div className="info-label">
                  <span>Bộ</span>
                  <a href="#" className="breakdown-link">
                      <span className="icon">🗺️</span> Kanji Breakdown
                  </a>
              </div>
              <div className="components-vertical-list">
                  {/* Hiển thị bộ thủ chính trước */}
                  {data.radical && (
                      <div className="component-item main-radical">
                          <span className="comp-char japanese-text">
                            {typeof data.radical === 'object' ? data.radical.character : data.radical}
                          </span>
                          <span className="comp-name">{typeof data.radical === 'object' ? data.radical.meaningVi : 'Bộ thủ'}</span>
                          <span className="comp-badge">Chính</span>
                      </div>
                  )}
                  {/* Hiển thị các bộ thành phần khác (lọc bỏ bộ thủ chính nếu trùng) */}
                  {data.components && data.components
                      .filter(comp => !data.radical || (typeof data.radical === 'object' ? comp.id !== data.radical.id : comp.character !== data.radical))
                      .map(comp => (
                       <div key={comp.id} className="component-item">
                          <span className="comp-char japanese-text">{comp.character}</span>
                          <span className="comp-name">{comp.meaningVi || comp.meaningEn}</span>
                       </div>
                  ))}
              </div>
            </div>
          )}

          <div className="info-card">
            <h4 className="section-label">Câu ví dụ</h4>
            <div className="examples-list">
              {data.exampleSentences && Array.isArray(data.exampleSentences) && data.exampleSentences.length > 0 ? (
                data.exampleSentences.slice(0, 3).map((ex, i) => (
                  <div key={i} className="example-item">
                    <p className="ex-ja japanese-text">{ex.ja}</p>
                    <p className="ex-vi">{ex.vi}</p>
                  </div>
                ))
              ) : (
                <div className="empty-placeholder">
                  <span>Hệ thống đang tổng hợp ví dụ cho chữ Hán này...</span>
                </div>
              )}
            </div>
          </div>

          {relatedVocab.length > 0 && (
            <div className="info-card related-items">
              <h4 className="section-label">Từ vựng liên quan (Knowledge Graph)</h4>
              <div className="related-grid">
                {relatedVocab.slice(0, 6).map((v, i) => (
                  <div key={i} className="related-mini-card" onClick={() => playAudio(v.wordJa)}>
                    <div className="mini-card-header">
                      <span className="mini-word japanese-text">{v.wordJa}</span>
                      <span className="mini-reading">{v.reading}</span>
                    </div>
                    <div className="mini-card-body">
                      <span className="mini-meaning">{v.meaningVi || v.meaningEn || 'Đang cập nhật'}</span>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      );
    }

    if (type === 'grammar') {
      return (
        <div className="detail-content">
          <div className="detail-header grammar-header">
            <h1 className="grammar-pattern-text japanese-text">{data.patternJa}</h1>
            <div className="grammar-badge">{data.jlptLevel}</div>
          </div>
          
          <div className="info-card grammar-explanation">
            <h4 className="section-label">Cách dùng & Ý nghĩa</h4>
            <div 
                className="explanation-text rich-content" 
                dangerouslySetInnerHTML={{ __html: data.explanationVi }} 
            />
          </div>

          {data.structureVi && (
            <div className="info-card grammar-structure">
              <h4 className="section-label">🛠 Cấu trúc</h4>
              <div 
                  className="structure-text rich-content" 
                  dangerouslySetInnerHTML={{ __html: data.structureVi }} 
              />
            </div>
          )}

          <div className="info-card">
            <h4 className="section-label">Ví dụ điển hình</h4>
            <div className="examples-list">
               {data.exampleSentences && Array.isArray(data.exampleSentences) && data.exampleSentences.length > 0 ? (
                  data.exampleSentences.slice(0, 3).map((ex, i) => (
                    <div key={i} className="example-item">
                      <p className="ex-ja japanese-text">{ex.ja}</p>
                      <p className="ex-vi">{ex.vi}</p>
                    </div>
                  ))
                ) : (
                  <div className="empty-placeholder">
                    <span>Hệ thống đang cập nhật ví dụ cho cấu trúc này...</span>
                  </div>
                )}
            </div>
          </div>
        </div>
      );
    }
  };

  return (
    <div className="popup-overlay" onClick={onClose}>
      <div className="popup-card glass-effect modern-scroll" onClick={e => e.stopPropagation()}>
        <div className="popup-toolbar">
          <div className="toolbar-left">
              <button 
                className={`action-btn ${actionStatus.notebook ? 'active' : ''}`}
                onClick={handleAddToNotebook}
                title="Lưu vào sổ tay"
              >
                {actionStatus.notebook ? <CheckCircle2 size={24} /> : <Bookmark size={24} />}
              </button>
            <button className="action-btn" title="Chia sẻ"><Share2 size={20} /></button>
          </div>
          <button className="close-popup-btn" onClick={onClose}><X size={28} /></button>
        </div>
        
        {renderContent()}

        {!loading && data && (
            <div className="popup-footer">
              <button className="premium-btn">
                <span>Học chuyên sâu với AI</span>
                <ArrowRight size={16} />
              </button>
            </div>
        )}
      </div>
      <SaveToNotebookPopup 
        isOpen={isSavePopupOpen} 
        onClose={() => setIsSavePopupOpen(false)} 
        onSave={onSaveToNotebookSuccess}
        itemType={type.toUpperCase()}
        itemId={id}
      />
    </div>
  );
};

export default DictionaryDetailPopup;
