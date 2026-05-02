import React, { useState, useRef, useEffect } from 'react';
import { Play, RefreshCcw, CheckCircle, ArrowRight } from 'lucide-react';
import QuizBlock from './QuizBlock';

const BlockRenderer = ({ block, progress, onUpdateProgress, onComplete }) => {
  const [showResumePrompt, setShowResumePrompt] = useState(false);
  const mediaRef = useRef(null);
  const lastSavedTimeRef = useRef(0);

  useEffect(() => {
    const hasTimestamp = progress?.lastTimestamp > 0 && !progress?.isCompleted;
    if ((block.blockType === 'VIDEO' || block.blockType === 'AUDIO') && hasTimestamp) {
      setShowResumePrompt(true);
    }
  }, [block.id, progress?.isCompleted]);

  const handleResume = () => {
    if (mediaRef.current) {
      mediaRef.current.currentTime = progress.lastTimestamp;
      mediaRef.current.play();
    }
    setShowResumePrompt(false);
  };

  const handleStartFromBeginning = () => {
    if (mediaRef.current) {
      mediaRef.current.currentTime = 0;
      mediaRef.current.play();
    }
    setShowResumePrompt(false);
  };

  const handleTimeUpdate = () => {
    if (mediaRef.current) {
      const currentTime = mediaRef.current.currentTime;
      const duration = mediaRef.current.duration;
      
      // Save progress every 5 seconds
      if (Math.abs(currentTime - lastSavedTimeRef.current) >= 5) {
        onUpdateProgress(block.id, { lastTimestamp: currentTime });
        lastSavedTimeRef.current = currentTime;
      }

      // Auto-complete logic: 80% for Audio, 85% for Video
      const threshold = block.blockType === 'AUDIO' ? 0.8 : 0.85;
      if (!progress?.isCompleted && duration > 0 && (currentTime / duration) >= threshold) {
        onComplete(block.id);
      }
    }
  };

  const getYoutubeEmbedUrl = (url) => {
    if (!url) return null;
    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
    const match = url.match(regExp);
    return (match && match[2].length === 11) 
      ? `https://www.youtube.com/embed/${match[2]}` 
      : null;
  };

  const renderFooter = () => (
    <div className="block-footer-actions">
      {!progress?.isCompleted && (
        <button 
          className="mark-done-btn premium" 
          onClick={() => onComplete(block.id)}
        >
          Hoàn thành & Tiếp theo <ArrowRight size={16} style={{ marginLeft: '8px' }} />
        </button>
      )}
      {progress?.isCompleted && (
        <div className="block-completed-tag">
          <CheckCircle size={16} /> Đã hoàn thành
        </div>
      )}
    </div>
  );

  switch (block.blockType) {
    case 'TEXT':
      return (
        <div className="block-text-content glass-effect-light">
          <div dangerouslySetInnerHTML={{ __html: block.contentVi }} />
          {block.contentJa && (
            <div className="content-ja-translation" dangerouslySetInnerHTML={{ __html: block.contentJa }} />
          )}
          {renderFooter()}
        </div>
      );
    case 'VIDEO':
      const youtubeUrl = getYoutubeEmbedUrl(block.videoUrl);
      return (
        <div className="block-video-content">
          <div className="video-wrapper glass-effect">
             {showResumePrompt && (
               <div className="resume-overlay glass-effect">
                  <div className="resume-card">
                    <p>Bạn đang {block.blockType === 'VIDEO' ? 'xem' : 'nghe'} dở. Tiếp tục từ <b>{Math.floor(progress.lastTimestamp / 60)}:{(Math.floor(progress.lastTimestamp % 60)).toString().padStart(2, '0')}</b>?</p>
                    <div className="resume-btns">
                      <button onClick={handleResume} className="btn-resume primary"><Play size={18} /> {block.blockType === 'VIDEO' ? 'Xem tiếp' : 'Nghe tiếp'}</button>
                      <button onClick={handleStartFromBeginning} className="btn-resume secondary"><RefreshCcw size={18} /> Bắt đầu lại</button>
                    </div>
                  </div>
               </div>
             )}
             {youtubeUrl ? (
               <iframe 
                 src={youtubeUrl} 
                 title="YouTube video player" 
                 frameBorder="0" 
                 allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                 allowFullScreen
               ></iframe>
             ) : block.videoUrl ? (
                <video 
                  ref={mediaRef}
                  controls 
                  src={block.videoUrl} 
                  width="100%" 
                  height="auto" 
                  onTimeUpdate={handleTimeUpdate}
                />
             ) : (
               <div className="video-placeholder">
                  <span>🎥 Video chưa sẵn sàng</span>
               </div>
             )}
          </div>
          {block.contentVi && <div className="video-description">{block.contentVi}</div>}
          {renderFooter()}
        </div>
      );
    case 'AUDIO':
      return (
        <div className="block-audio-content">
          <div className="audio-wrapper glass-effect">
            {showResumePrompt && (
              <div className="resume-overlay glass-effect">
                <div className="resume-card">
                  <p>Bạn đang nghe dở. Tiếp tục từ <b>{Math.floor(progress.lastTimestamp / 60)}:{(Math.floor(progress.lastTimestamp % 60)).toString().padStart(2, '0')}</b>?</p>
                  <div className="resume-btns">
                    <button onClick={handleResume} className="btn-resume primary"><Play size={18} /> Nghe tiếp</button>
                    <button onClick={handleStartFromBeginning} className="btn-resume secondary"><RefreshCcw size={18} /> Bắt đầu lại</button>
                  </div>
                </div>
              </div>
            )}
            <audio 
              ref={mediaRef}
              controls 
              src={block.audioUrl} 
              onTimeUpdate={handleTimeUpdate}
              style={{ width: '100%' }}
            />
          </div>
          {block.contentVi && <div className="audio-description">{block.contentVi}</div>}
          {renderFooter()}
        </div>
      );
    case 'IMAGE':
      return (
        <div className="block-image-content">
           <div className="image-wrapper glass-effect">
              <img src={block.imageUrl} alt="Lesson content" />
           </div>
           {block.contentVi && <div className="image-caption">{block.contentVi}</div>}
           {renderFooter()}
        </div>
      );
    case 'QUIZ':
      return (
        <QuizBlock 
          blockId={block.id} 
          onComplete={onComplete} 
        />
      );
    default:
      return <div className="block-unknown">Chưa hỗ trợ loại nội dung: {block.blockType}</div>;
  }
};

export default BlockRenderer;
