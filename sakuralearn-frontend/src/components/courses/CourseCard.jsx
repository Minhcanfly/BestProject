import React from 'react';
import { useNavigate } from 'react-router-dom';
import { formatCurrency } from '../../utils/formatters';
import './CourseCard.css';

const CourseCard = ({ course }) => {
  const navigate = useNavigate();

  const handleCardClick = () => {
    navigate(`/courses/${course.id}`);
  };

  return (
    <div className="course-card glass-effect" onClick={handleCardClick}>
      <div className="course-thumbnail">
        {course.thumbnailUrl ? (
          <img src={course.thumbnailUrl} alt={course.titleVi} />
        ) : (
          <div className="thumbnail-placeholder">
             <span>🌸</span>
          </div>
        )}
        <div className="course-level-badge">{course.jlptLevel}</div>
      </div>
      
      <div className="course-info">
        <h3 className="course-title">{course.titleVi}</h3>
        {course.titleJa && <p className="course-title-ja">{course.titleJa}</p>}
        
        <div className="course-meta">
          <span className="teacher"><i className="teacher-icon">👤</i> {course.teacherName || 'Hệ thống'}</span>
          <span className="duration"><i className="clock-icon">🕒</i> {course.durationMinutes} phút</span>
        </div>
        
        <div className="course-footer">
          <div className="price-tag">
            <span className={course.price > 0 ? 'price' : 'free'}>
              {formatCurrency(course.price)}
            </span>
          </div>
          <button className="enroll-btn-mini">Chi tiết</button>
        </div>
      </div>
    </div>
  );
};

export default CourseCard;
