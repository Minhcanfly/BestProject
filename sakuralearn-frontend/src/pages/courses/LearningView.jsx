import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { courseService } from '../../services/courseService';
import { lessonService } from '../../services/lessonService';
import { progressService } from '../../services/progressService';
import { getApiErrorMessage } from '../../utils/apiError';
import { ROUTES } from '../../constants/routes';
import StatusMessage from '../../components/common/StatusMessage';
import BlockRenderer from '../../components/courses/BlockRenderer';
import { 
  ChevronRight, 
  ChevronLeft, 
  Menu, 
  CheckCircle, 
  PlayCircle,
  Home,
  BookOpen,
  ArrowRight,
  ArrowLeft
} from 'lucide-react';
import './LearningView.css';

const LearningView = () => {
  const { courseId } = useParams();
  const navigate = useNavigate();
  
  const [course, setCourse] = useState(null);
  const [lessons, setLessons] = useState([]);
  const [currentLesson, setCurrentLesson] = useState(null);
  const [blocks, setBlocks] = useState([]);
  const [progress, setProgress] = useState(0);
  const [completedLessons, setCompletedLessons] = useState([]);
  
  const [error, setError] = useState(null);
  const [successMessage, setSuccessMessage] = useState('');
  
  const [loading, setLoading] = useState(true);
  const [sidebarOpen, setSidebarOpen] = useState(true);

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
      const [courseRes, lessonsRes, progressRes] = await Promise.all([
        courseService.getCourseById(courseId),
        lessonService.getLessonsByCourse(courseId),
        progressService.getCourseProgress(courseId).catch(() => ({ data: 0 }))
      ]);
      
      if (!courseRes.data) throw new Error('Không tìm thấy khóa học');
      
      setCourse(courseRes.data);
      const lessonsData = (lessonsRes.data || []).sort((a, b) => a.orderIndex - b.orderIndex);
      setLessons(lessonsData);
      
      // Handle progress data structure
      const progVal = typeof progressRes.data === 'number' ? progressRes.data : (progressRes.data?.progressPercentage || 0);
      setProgress(progVal);
      
      if (lessonsData.length > 0) {
        setCurrentLesson(lessonsData[0]);
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
      const response = await lessonService.getBlocksByLesson(lessonId);
      const sortedBlocks = (response.data || []).sort((a, b) => a.orderIndex - b.orderIndex);
      setBlocks(sortedBlocks);
      
      // Mark as last accessed (Fire and forget)
      progressService.updateLastAccessed(lessonId).catch(() => {});
    } catch (error) {
      console.error('Error fetching lesson blocks:', error);
    }
  };

  const handleLessonComplete = async () => {
    if (!currentLesson) return;
    
    try {
      await progressService.completeLesson(currentLesson.id);
      
      // Update local state
      if (!completedLessons.includes(currentLesson.id)) {
        setCompletedLessons([...completedLessons, currentLesson.id]);
      }
      
      // Refresh progress
      const progressRes = await progressService.getCourseProgress(courseId);
      const progVal = typeof progressRes.data === 'number' ? progressRes.data : (progressRes.data?.progressPercentage || 0);
      setProgress(progVal);
      
      // Move to next or show success
      if (currentLessonIndex < lessons.length - 1) {
        setCurrentLesson(lessons[currentLessonIndex + 1]);
      } else {
        setSuccessMessage('Chúc mừng! Bạn đã hoàn thành toàn bộ bài học trong khóa học này! 🎉');
        setTimeout(() => setSuccessMessage(''), 5000);
      }
    } catch (error) {
      console.error('Error completing lesson:', error);
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
            {blocks.length > 0 ? (
              <div className="blocks-presentation">
                {blocks.map(block => (
                  <BlockRenderer key={block.id} block={block} />
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
                  <button 
                    className="nav-btn-premium primary"
                    onClick={handleLessonComplete}
                  >
                    {isLastLesson ? 'Hoàn thành khóa học' : 'Hoàn thành & Tiếp theo'} <CheckCircle size={20} style={{ marginLeft: '8px' }} />
                  </button>
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
