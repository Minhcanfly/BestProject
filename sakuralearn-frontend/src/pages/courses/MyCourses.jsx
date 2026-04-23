import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { enrollmentService } from '../../services/enrollmentService';
import { ROUTES } from '../../constants/routes';
import { BookOpen, Clock, ArrowRight, Play } from 'lucide-react';
import './MyCourses.css';

const MyCourses = () => {
  const [enrollments, setEnrollments] = useState([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();

  useEffect(() => {
    fetchMyEnrollments();
  }, []);

  const fetchMyEnrollments = async () => {
    try {
      const response = await enrollmentService.getMyEnrollments();
      setEnrollments(response.data || []);
    } catch (err) {
      console.error('Error fetching enrollments:', err);
    } finally {
      setLoading(false);
    }
  };

  if (loading) return <div className="loading-screen"><div className="loader"></div></div>;

  return (
    <div className="my-courses-container">
      <div className="my-courses-header">
        <h1>Khóa học của tôi</h1>
        <p>Theo dõi và tiếp tục hành trình học tập của bạn</p>
      </div>

      {enrollments.length > 0 ? (
        <div className="my-courses-grid">
          {enrollments.map((enrollment) => (
            <div key={enrollment.id} className="course-card glass-effect my-course-card" onClick={() => navigate(ROUTES.LEARNING(enrollment.courseId))}>
              <div className="course-thumbnail">
                {enrollment.thumbnailUrl ? (
                  <img src={enrollment.thumbnailUrl} alt={enrollment.courseTitle} />
                ) : (
                  <div className="thumbnail-placeholder">🌸</div>
                )}
                <div className="course-level-badge">{enrollment.jlptLevel || 'ALL'}</div>
              </div>
              
              <div className="course-info">
                <h3 className="course-title">{enrollment.courseTitle}</h3>
                
                <div className="progress-section">
                  <div className="progress-info">
                    <span>Tiến độ học tập</span>
                    <span>{Math.round(enrollment.progressPercentage)}%</span>
                  </div>
                  <div className="p-bar-bg">
                    <div className="p-bar-fill" style={{ width: `${enrollment.progressPercentage}%` }}></div>
                  </div>
                </div>

                <div className="course-meta">
                  <div className="meta-item">
                    <BookOpen size={14} />
                    <span>{enrollment.lessonCount || 0} bài học</span>
                  </div>
                  {enrollment.lastAccessedAt && (
                    <div className="meta-item">
                      <Clock size={14} />
                      <span>{new Date(enrollment.lastAccessedAt).toLocaleDateString()}</span>
                    </div>
                  )}
                </div>
                
                <div className="course-footer">
                  <button 
                    className="continue-btn-v2" 
                  >
                    <Play size={14} fill="currentColor" /> Tiếp tục học
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      ) : (
        <div className="empty-courses glass-effect">
          <BookOpen size={48} className="empty-icon" />
          <h3>Bạn chưa tham gia khóa học nào</h3>
          <p>Khám phá thư viện khóa học để bắt đầu hành trình của mình!</p>
          <button className="explore-btn" onClick={() => navigate(ROUTES.COURSES)}>
            Khám phá ngay <ArrowRight size={18} />
          </button>
        </div>
      )}
    </div>
  );
};

export default MyCourses;
