import React from 'react';

const BlockRenderer = ({ block }) => {
  // Helper to extract YouTube ID if it's a YouTube URL
  const getYoutubeEmbedUrl = (url) => {
    if (!url) return null;
    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
    const match = url.match(regExp);
    return (match && match[2].length === 11) 
      ? `https://www.youtube.com/embed/${match[2]}` 
      : null;
  };

  switch (block.blockType) {
    case 'TEXT':
      return (
        <div className="block-text-content glass-effect-light">
          <div dangerouslySetInnerHTML={{ __html: block.contentVi }} />
          {block.contentJa && (
            <div className="content-ja-translation" dangerouslySetInnerHTML={{ __html: block.contentJa }} />
          )}
        </div>
      );
    case 'VIDEO':
      const youtubeUrl = getYoutubeEmbedUrl(block.videoUrl);
      return (
        <div className="block-video-content">
          <div className="video-wrapper glass-effect">
             {youtubeUrl ? (
               <iframe 
                 src={youtubeUrl} 
                 title="YouTube video player" 
                 frameBorder="0" 
                 allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                 allowFullScreen
               ></iframe>
             ) : block.videoUrl ? (
               <video controls src={block.videoUrl} width="100%" height="auto" />
             ) : (
               <div className="video-placeholder">
                  <span>🎥 Video chưa sẵn sàng</span>
               </div>
             )}
          </div>
          {block.contentVi && <div className="video-description">{block.contentVi}</div>}
        </div>
      );
    case 'AUDIO':
      return (
        <div className="block-audio-content glass-effect">
          <audio controls src={block.audioUrl} />
          {block.contentVi && <div className="audio-description">{block.contentVi}</div>}
        </div>
      );
    case 'IMAGE':
      return (
        <div className="block-image-content">
           <div className="image-wrapper glass-effect">
              <img src={block.imageUrl} alt="Lesson content" />
           </div>
           {block.contentVi && <div className="image-caption">{block.contentVi}</div>}
        </div>
      );
    default:
      return <div className="block-unknown">Chưa hỗ trợ loại nội dung: {block.blockType}</div>;
  }
};

export default BlockRenderer;
