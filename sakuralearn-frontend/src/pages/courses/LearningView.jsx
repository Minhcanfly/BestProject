import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { courseService } from '../../services/courseService';
import { lessonService } from '../../services/lessonService';
import { progressService } from '../../services/progressService';
import { enrollmentService } from '../../services/enrollmentService';
import { getApiErrorMessage } from '../../utils/apiError';
import { ROUTES } from '../../constants/routes';
import StatusMessage from '../../components/common/StatusMessage';
import BlockRenderer from '../../components/courses/BlockRenderer';
import NoteComponent from '../../components/courses/NoteComponent';
import { 
  ChevronRight, 
  ChevronLeft, 
  Menu, 
  CheckCircle, 
  PlayCircle,
  Home,
  BookOpen,
  ArrowRight,
  ArrowLeft,
  RefreshCcw
} from 'lucide-react';
import confetti from 'canvas-confetti';
import './LearningView.css';

const MOTIVATIONAL_MESSAGES = [
  "Tuyệt vời! Bạn đang tiến bộ rất nhanh! 🚀",
  "Xuất sắc! Kiên trì chính là chìa khóa của thành công. 🔑",
  "Bạn làm tốt lắm! Hãy tiếp tục giữ vững phong độ này nhé. ✨",
  "Thêm một bước nữa gần hơn với mục tiêu của bạn rồi! 🎯",
  "Cố gắng lên! Mỗi bài học là một viên gạch xây dựng tương lai. 🏗️"
];

const LearningView = () => {
  const { courseId } = useParams();
  const navigate = useNavigate();
  
  const [course, setCourse] = useState(null);
  const [lessons, setLessons] = useState([]);
  const [currentLesson, setCurrentLesson] = useState(null);
  const [blocks, setBlocks] = useState([]);
  const [progress, setProgress] = useState(0);
  const [completedLessons, setCompletedLessons] = useState([]);
  const [blockProgressMap, setBlockProgressMap] = useState({});
  
  const [error, setError] = useState(null);
  const [successMessage, setSuccessMessage] = useState('');
  
  const [loading, setLoading] = useState(true);
  const [sidebarOpen, setSidebarOpen] = useState(true);
  const [isSaving, setIsSaving] = useState(false);

  const currentLessonIndex = lessons.findIndex((l) => l.id === currentLesson?.id);
  const isFirstLesson = currentLessonIndex <= 0;
  const isLastLesson = currentLessonIndex === lessons.length - 1 || currentLessonIndex < 0;

  useEffect(() => {
    fetchInitialData();
  }, [courseId]);

  useEffect(() => {
    if (currentLesson) {
      fetchLessonContent(currentLesson.id);
      // Reset scroll position when switching lessons
      window.scrollTo(0, 0);
      const contentArea = document.querySelector('.learning-content-area');
      if (contentArea) contentArea.scrollTop = 0;
    }
  }, [currentLesson]);

  const fetchInitialData = async () => {
    setLoading(true);
    setError(null);
    try {
      const [courseRes, lessonsRes, enrollmentCheck, completedRes] = await Promise.all([
        courseService.getCourseById(courseId),
        lessonService.getLessonsByCourse(courseId),
        enrollmentService.checkEnrollment(courseId),
        progressService.getCompletedLessons(courseId)
      ]);
      
      if (!courseRes.data) throw new Error('Không tìm thấy khóa học');
      
      // Strict access control: Must be enrolled to learn
      if (!enrollmentCheck.data) {
        setError('Bạn cần ghi danh vào khóa học này để xem nội dung.');
        setTimeout(() => navigate(ROUTES.COURSE_DETAIL(courseId)), 3000);
        return;
      }

      setCourse(courseRes.data);
      const lessonsData = (lessonsRes.data || []).sort((a, b) => a.orderIndex - b.orderIndex);
      setLessons(lessonsData);
      setCompletedLessons(completedRes.data || []);
      
      // Fetch progress
      const progressRes = await progressService.getCourseProgress(courseId).catch(() => ({ data: 0 }));
      const progVal = typeof progressRes.data === 'number' ? progressRes.data : (progressRes.data?.progressPercentage || 0);
      setProgress(progVal);

      // Find last accessed lesson or default to first
      const lastAccessedLesson = lessonsData.find(l => l.id === enrollmentCheck.data.lastLessonId) || lessonsData[0];
      
      if (lastAccessedLesson) {
        setCurrentLesson(lastAccessedLesson);
      }
    } catch (err) {
      console.error('Error fetching learning data:', err);
      setError(getApiErrorMessage(err, 'Lỗi khi tải nội dung bài học'));
    } finally {
      setLoading(false);
    }
  };

  const fetchLessonContent = async (lessonId) => {
    try {
      const [blocksRes, progressRes] = await Promise.all([
        lessonService.getBlocksByLesson(lessonId),
        progressService.getLessonBlocksProgress(lessonId)
      ]);

      const sortedBlocks = (blocksRes.data || []).sort((a, b) => a.orderIndex - b.orderIndex);
      setBlocks(sortedBlocks);
      
      // Create a map of blockId -> progress object
      const progMap = {};
      (progressRes.data || []).forEach(p => {
        progMap[p.blockId] = p;
      });
      setBlockProgressMap(progMap);
      
      // Mark as last accessed (Fire and forget)
      progressService.updateLastAccessed(lessonId).catch(() => {});
    } catch (error) {
      console.error('Error fetching lesson blocks:', error);
    }
  };

  const handleUpdateBlockProgress = async (blockId, data) => {
    setIsSaving(true);
    try {
      const response = await progressService.updateBlockProgress(blockId, data);
      setBlockProgressMap(prev => ({
        ...prev,
        [blockId]: response.data
      }));
      setTimeout(() => setIsSaving(false), 1500);
    } catch (error) {
      console.error('Error updating block progress:', error);
      setIsSaving(false);
    }
  };

  const triggerConfetti = () => {
    confetti({
      particleCount: 150,
      spread: 70,
      origin: { y: 0.6 },
      colors: ['#ee5253', '#feca57', '#ff9f43', '#2ed573']
    });
  };

  const handleBlockComplete = async (blockId) => {
    try {
      const response = await progressService.updateBlockProgress(blockId, { isCompleted: true });
      setBlockProgressMap(prev => ({
        ...prev,
        [blockId]: response.data
      }));

      // Refresh overall course progress
      const progressRes = await progressService.getCourseProgress(courseId);
      const progVal = typeof progressRes.data === 'number' ? progressRes.data : (progressRes.data?.progressPercentage || 0);
      setProgress(progVal);

      // Motivational message for block completion
      const randomMsg = MOTIVATIONAL_MESSAGES[Math.floor(Math.random() * MOTIVATIONAL_MESSAGES.length)];
      setSuccessMessage(randomMsg);
      setTimeout(() => setSuccessMessage(''), 3000);

      // Auto-scroll to next block
      const currentIndex = blocks.findIndex(b => b.id === blockId);
      if (currentIndex < blocks.length - 1) {
        const nextBlockId = blocks[currentIndex + 1].id;
        // Wait for state update and re-render
        setTimeout(() => {
          const nextBlockElement = document.getElementById(`block-${nextBlockId}`);
          if (nextBlockElement) {
            nextBlockElement.scrollIntoView({ behavior: 'smooth', block: 'start' });
          }
        }, 100);
      } else {
        // If it's the last block, scroll to the "Finish Lesson" button
        setTimeout(() => {
          const footerBtn = document.querySelector('.nav-btn-premium.primary');
          if (footerBtn) {
            footerBtn.scrollIntoView({ behavior: 'smooth', block: 'center' });
          }
        }, 100);
      }
    } catch (error) {
      console.error('Error completing block:', error);
    }
  };

  const handleLessonComplete = async () => {
    if (!currentLesson) return;
    
    setLoading(true);
    try {
      // Call new API to mark all blocks in this lesson as completed
      await progressService.completeLesson(currentLesson.id);
      
      // Add to completed list locally for UI updates
      if (!completedLessons.includes(currentLesson.id)) {
        setCompletedLessons(prev => [...prev, currentLesson.id]);
      }

      // Refresh overall progress display
      const progressRes = await progressService.getCourseProgress(courseId);
      const progVal = typeof progressRes.data === 'number' ? progressRes.data : (progressRes.data?.progressPercentage || 0);
      setProgress(progVal);

      // Trigger WOW effect
      triggerConfetti();
      
      // Random motivational message
      const randomMsg = MOTIVATIONAL_MESSAGES[Math.floor(Math.random() * MOTIVATIONAL_MESSAGES.length)];

      // Check if this was the last lesson
      if (currentLessonIndex === lessons.length - 1) {
        setSuccessMessage(`Chúc mừng! Bạn đã hoàn thành toàn bộ khóa học! 🎉 \n ${randomMsg}`);
        setTimeout(() => setSuccessMessage(''), 8000);
      } else {
        setSuccessMessage(randomMsg);
        setTimeout(() => setSuccessMessage(''), 4000);
        // Move to next lesson after a short delay to let user see success
        setTimeout(() => {
           setCurrentLesson(lessons[currentLessonIndex + 1]);
        }, 2000);
      }
    } catch (error) {
      console.error('Error completing lesson:', error);
      setError('Lỗi khi lưu tiến trình bài học. Vui lòng thử lại.');
    } finally {
      setLoading(false);
    }
  };

  if (loading) return <div className="learning-loading"><div className="loader"></div></div>;

  if (error) return (
    <div className="learning-error glass-effect">
       <h2>Opps! Có lỗi xảy ra</h2>
       <p>{error}</p>
       <button onClick={() => navigate(ROUTES.COURSES)} className="back-btn-error">Quay lại danh sách khóa học</button>
    </div>
  );

  return (
    <div className={`learning-view-wrapper ${!sidebarOpen ? 'full-width' : ''}`}>
      {/* Main Content Area */}
      <main className="learning-main-content">
        <header className="learning-nav-header glass-effect">
          <div className="header-left">
            <button className="icon-btn-circle" onClick={() => navigate(ROUTES.HOME)} title="Về trang chủ">
              <Home size={20} />
            </button>
            <button className="icon-btn-circle" onClick={() => navigate(ROUTES.COURSE_DETAIL(courseId))} title="Về trang khóa học">
              <ArrowLeft size={20} />
            </button>
            <div className="breadcrumb">
              <span className="b-course">{course?.titleVi}</span>
              <ChevronRight size={16} className="b-sep" />
              <span className="b-lesson">{currentLesson?.titleVi}</span>
            </div>
          </div>
          
          <div className="header-right">
             {!sidebarOpen && (
               <button className="toggle-sidebar-btn" onClick={() => setSidebarOpen(true)}>
                 <Menu size={20} /> Danh sách bài học
               </button>
             )}
          </div>
        </header>

        <StatusMessage type="success" message={successMessage} />

        <div className="learning-scroll-container">
          <div className="content-inner-max">
            {currentLesson && completedLessons.includes(currentLesson.id) && (
              <div className="lesson-status-alert info glass-effect-light">
                <CheckCircle size={18} /> Bạn đã hoàn thành bài học này. Bạn có thể xem lại hoặc chuyển sang bài tiếp theo.
              </div>
            )}
            
            {blocks.length > 0 ? (
              <div className="blocks-presentation">
                {blocks.map(block => (
                   <div key={block.id} id={`block-${block.id}`} className="block-unit-container">
                      <BlockRenderer 
                        block={block} 
                        progress={blockProgressMap[block.id]}
                        onUpdateProgress={handleUpdateBlockProgress}
                        onComplete={handleBlockComplete}
                      />
                      <NoteComponent blockId={block.id} />
                   </div>
                ))}
              </div>
            ) : (
              <div className="content-placeholder glass-effect">
                 <div className="placeholder-icon">🌸</div>
                 <h3>Nội dung đang được chuẩn bị</h3>
                 <p>Bài học này hiện chưa có nội dung hiển thị. Vui lòng quay lại sau!</p>
              </div>
            )}
            
            <div className="lesson-footer-actions">
               <div className="nav-controls">
                  <button 
                    className="nav-btn-premium"
                    disabled={isFirstLesson}
                    onClick={() => setCurrentLesson(lessons[currentLessonIndex - 1])}
                  >
                    <ArrowLeft size={20} /> Bài trước
                  </button>

                  {blocks.some(b => !blockProgressMap[b.id]?.isCompleted) ? (
                    <button 
                      className="nav-btn-premium primary"
                      onClick={() => {
                        const firstIncomplete = blocks.find(b => !blockProgressMap[b.id]?.isCompleted);
                        if (firstIncomplete) {
                          document.getElementById(`block-${firstIncomplete.id}`)?.scrollIntoView({ behavior: 'smooth', block: 'start' });
                        }
                      }}
                    >
                      Tiếp tục học <PlayCircle size={20} style={{ marginLeft: '8px' }} />
                    </button>
                  ) : (
                    <button 
                      className="nav-btn-premium primary"
                      onClick={handleLessonComplete}
                    >
                      {isLastLesson ? 'Hoàn thành khóa học' : 'Bài tiếp theo'} <ArrowRight size={20} style={{ marginLeft: '8px' }} />
                    </button>
                  )}
                  
                  <button 
                    className="nav-btn-premium"
                    disabled={isLastLesson}
                    onClick={() => setCurrentLesson(lessons[currentLessonIndex + 1])}
                  >
                    Bài sau <ArrowRight size={20} />
                  </button>
               </div>
            </div>
          </div>
        </div>

        {isSaving && (
          <div className="saving-indicator">
            <RefreshCcw size={16} className="animate-spin" /> Đang lưu tiến độ...
          </div>
        )}
      </main>

      {/* Right Sidebar */}
      <aside className={`learning-sidebar-right glass-effect ${!sidebarOpen ? 'collapsed' : ''}`}>
        <div className="sidebar-top">
           <div className="sidebar-title-row">
              <h3><BookOpen size={20} style={{ marginRight: '8px' }} /> Nội dung học tập</h3>
              <button className="close-btn-sidebar" onClick={() => setSidebarOpen(false)}><ChevronRight size={24} /></button>
           </div>
           
           <div className="progress-card glass-effect-light">
              <div className="progress-labels">
                <span className="p-label">Tiến trình của bạn</span>
                <span className="p-percent">{progress}%</span>
              </div>
              <div className="p-bar-bg">
                <div className="p-bar-fill" style={{ width: `${progress}%` }}></div>
              </div>
           </div>
        </div>

        <div className="sidebar-lessons-scroll">
          {lessons.map((lesson, index) => (
            <div 
              key={lesson.id} 
              className={`lesson-item-player ${currentLesson?.id === lesson.id ? 'active' : ''} ${completedLessons.includes(lesson.id) ? 'completed' : ''}`}
              onClick={() => setCurrentLesson(lesson)}
            >
              <div className="l-status-icon">
                 {completedLessons.includes(lesson.id) ? <CheckCircle size={18} className="icon-done" /> : <PlayCircle size={18} className="icon-play" />}
              </div>
              <div className="l-info">
                 <span className="l-idx">Bài {index + 1}</span>
                 <p className="l-name">{lesson.titleVi}</p>
              </div>
            </div>
          ))}
        </div>
      </aside>
    </div>
  );
};

export default LearningView;
