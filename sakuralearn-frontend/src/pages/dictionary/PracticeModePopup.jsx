import React, { useState } from 'react';
import { X, Layers, HelpCircle, Mic, FileText, Zap, Info } from 'lucide-react';
import './PracticeModePopup.css';

const PracticeModePopup = ({ isOpen, onClose, onSelectMode }) => {
  const [srsEnabled, setSrsEnabled] = useState(true);
  
  if (!isOpen) return null;

  const modes = [
    {
      id: 'flashcard',
      title: 'FlashCard',
      description: 'Ôn tập từ vựng bằng thẻ lật',
      icon: <Layers size={24} color="#48dbfb" />,
      color: 'rgba(72, 219, 251, 0.1)'
    },
    {
      id: 'quiz',
      title: 'Quizz',
      description: 'Trắc nghiệm nhanh để kiểm tra kiến thức',
      icon: <HelpCircle size={24} color="#ff9f43" />,
      color: 'rgba(255, 159, 67, 0.1)'
    },
    {
      id: 'speaking',
      title: 'Luyện nói, viết',
      description: 'Thực hành phát âm và viết từ',
      icon: <Mic size={24} color="#1dd1a1" />,
      color: 'rgba(29, 209, 161, 0.1)'
    },
    {
      id: 'minitest',
      title: 'Mini Test',
      description: 'Bài kiểm tra ngắn sau khi học',
      icon: <FileText size={24} color="#5f27cd" />,
      color: 'rgba(95, 39, 205, 0.1)'
    }
  ];

  return (
    <div className="practice-popup-overlay" onClick={onClose}>
      <div className="practice-popup-content glass-effect" onClick={e => e.stopPropagation()}>
        <div className="practice-popup-header">
          <h3>Chọn chế độ luyện tập</h3>
          <button className="close-btn" onClick={onClose}><X size={24} /></button>
        </div>

        <div className="srs-toggle-section">
            <div className="toggle-info">
                <div className="toggle-title">
                    <h4>Học lặp lại ngắt quãng (SRS)</h4>
                    <div className="info-tooltip-wrapper">
                        <Info size={14} className="info-icon" />
                        <span className="tooltip-text">
                            <b>Bật:</b> Chỉ học các từ đã đến hạn (ưu tiên ghi nhớ lâu dài).<br/>
                            <b>Tắt:</b> Học tất cả các từ trong sổ tay (phù hợp ôn tập nhanh).
                        </span>
                    </div>
                </div>
                <p>Dựa trên thuật toán SM-2 để tối ưu hóa việc ghi nhớ</p>
            </div>
            <label className="switch">
                <input 
                    type="checkbox" 
                    checked={srsEnabled} 
                    onChange={() => setSrsEnabled(!srsEnabled)} 
                />
                <span className="slider round"></span>
            </label>
        </div>

        <div className="modes-list">
          {modes.map(mode => (
            <div 
              key={mode.id} 
              className="mode-item" 
              onClick={() => onSelectMode(mode.id, srsEnabled)}
            >
              <div className="mode-icon-box" style={{ background: mode.color }}>
                {mode.icon}
              </div>
              <div className="mode-text">
                <h4>{mode.title}</h4>
                <p>{mode.description}</p>
              </div>
              <Zap size={18} className="zap-icon" />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default PracticeModePopup;
