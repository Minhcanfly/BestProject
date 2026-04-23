import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { courseService } from '../../services/courseService';
import { lessonService } from '../../services/lessonService';
import { enrollmentService } from '../../services/enrollmentService';
import { getApiErrorMessage } from '../../utils/apiError';
import { ROUTES } from '../../constants/routes';
import StatusMessage from '../../components/common/StatusMessage';
import './CourseDetail.css';

const CourseDetail = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const [course, setCourse] = useState(null);
  const [lessons, setLessons] = useState([]);
  const [enrollment, setEnrollment] = useState(null);
  const [loading, setLoading] = useState(true);
  const [enrolling, setEnrolling] = useState(false);
  const [errorMessage, setErrorMessage] = useState('');

  const isEnrolled = !!enrollment;

  useEffect(() => {
    fetchData();
  }, [id]);

  const fetchData = async () => {
    setLoading(true);
    setErrorMessage('');
    try {
      const [courseRes, lessonsRes, enrollRes] = await Promise.all([
        courseService.getCourseById(id),
        lessonService.getLessonsByCourse(id),
        enrollmentService.checkEnrollment(id).catch(() => ({ data: null }))
      ]);
      setCourse(courseRes.data);
      setLessons(lessonsRes.data);
      setEnrollment(enrollRes.data);
    } catch (error) {
      console.error('Error fetching course details:', error);
      setErrorMessage(getApiErrorMessage(error, 'Không thể tải thông tin khóa học.'));
    } finally {
      setLoading(false);
    }
  };

  const handleEnroll = async () => {
    if (isEnrolled) {
      navigate(ROUTES.LEARNING(id));
      return;
    }

    setEnrolling(true);
    try {
      setErrorMessage('');
      await enrollmentService.enrollInCourse(id);
      setIsEnrolled(true);
      navigate(ROUTES.LEARNING(id));
    } catch (error) {
      setErrorMessage(getApiErrorMessage(error, 'Có lỗi xảy ra khi đăng ký khóa học.'));
    } finally {
      setEnrolling(false);
    }
  };

  if (loading) return (
    <div className="detail-loading">
      <div className="loader"></div>
      <p>Đang tải thông tin khóa học...</p>
    </div>
  );

  if (!course) return <div className="error-view">Không tìm thấy khóa học.</div>;

  return (
    <div className="course-detail-page">
      <StatusMessage type="error" message={errorMessage} />
      <div className="course-hero glass-effect">
        <div className="hero-content">
          <div className="hero-text">
            <span className="jlpt-badge-large">{course.jlptLevel}</span>
            <h1 className="hero-title">{course.titleVi}</h1>
            {course.titleJa && <p className="hero-title-ja">{course.titleJa}</p>}
            <div className="hero-meta">
              <span>👤 Giảng viên: {course.teacherName || 'Hệ thống'}</span>
              <span>🕒 Thời lượng: {course.durationMinutes} phút</span>
              <span>📚 Bài học: {lessons.length} bài</span>
            </div>
            
            <div className="action-area">
              <div className="price-display">
                {course.price > 0 ? (
                  <span className="price-large">{new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(course.price)}</span>
                ) : (
                  <span className="free-large">Miễn phí</span>
                )}
              </div>
              
              {isEnrolled && (
                <div className="detail-progress-mini">
                  <div className="progress-text-mini">
                    <span>Tiến độ học tập:</span>
                    <span>{Math.round(enrollment.progressPercentage || 0)}%</span>
                  </div>
                  <div className="progress-bar-mini">
                    <div className="bar-fill-mini" style={{ width: `${enrollment.progressPercentage || 0}%` }}></div>
                  </div>
                </div>
              )}

              <button 
                className={`enroll-btn-large ${isEnrolled ? 'enrolled' : ''}`}
                onClick={handleEnroll}
                disabled={enrolling}
              >
                {enrolling ? 'Đang xử lý...' : isEnrolled ? 'Tiếp tục học' : 'Đăng ký ngay'}
              </button>
            </div>
          </div>
          
          <div className="hero-image">
             {course.thumbnailUrl ? (
               <img src={course.thumbnailUrl} alt={course.titleVi} className="glass-img" />
             ) : (
               <div className="hero-placeholder">🌸</div>
             )}
          </div>
        </div>
      </div>

      <div className="course-content-grid">
        <div className="main-info">
          <section className="description-section glass-effect">
            <h2>Giới thiệu khóa học</h2>
            <div className="desc-content">
              {course.descriptionVi || 'Chưa có mô tả chi tiết cho khóa học này.'}
            </div>
          </section>

          <section className="syllabus-section glass-effect">
            <h2>Lộ trình học tập ({lessons.length} bài)</h2>
            <div className="lesson-list-detailed">
              {lessons.map((lesson, index) => (
                <div key={lesson.id} className="lesson-item-row">
                  <span className="lesson-num">{index + 1}</span>
                  <div className="lesson-info-row">
                    <span className="lesson-title-row">{lesson.titleVi}</span>
                    <span className="lesson-type-tag">{lesson.lessonType}</span>
                  </div>
                </div>
              ))}
            </div>
          </section>
        </div>

        <div className="side-info">
           <div className="sticky-card glass-effect">
              <h3>Bạn sẽ nhận được gì?</h3>
              <ul className="perks-list">
                <li>✅ Truy cập trọn đời</li>
                <li>✅ AI hỗ trợ giải đáp 24/7</li>
                <li>✅ Flashcard tự động hóa</li>
                <li>✅ Chứng chỉ hoàn thành</li>
              </ul>
           </div>
        </div>
      </div>
    </div>
  );
};

export default CourseDetail;
