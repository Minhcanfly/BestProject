import React, { useState, useEffect } from 'react';
import { courseService } from '../../services/courseService';
import CourseCard from '../../components/courses/CourseCard';
import './CourseList.css';

const CourseList = () => {
  const [courses, setCourses] = useState([]);
  const [searchKeyword, setSearchKeyword] = useState('');
  const [loading, setLoading] = useState(true);
  const [selectedLevel, setSelectedLevel] = useState('ALL');

  const levels = ['ALL', 'N5', 'N4', 'N3', 'N2', 'N1'];

  useEffect(() => {
    fetchCourses();
  }, [selectedLevel]);

  const fetchCourses = async () => {
    setLoading(true);
    try {
      const params = selectedLevel !== 'ALL' ? { jlptLevel: selectedLevel } : {};
      const response = await courseService.getAllCourses(params);
      // Filter out drafts for public viewing
      const publishedCourses = response.data.filter(c => c.isPublished);
      setCourses(publishedCourses);
    } catch (error) {
      console.error('Error fetching courses:', error);
    } finally {
      setLoading(false);
    }
  };

  const displayedCourses = courses.filter((course) =>
    (course.titleVi || '').toLowerCase().includes(searchKeyword.trim().toLowerCase())
  );

  return (
    <div className="course-list-page">
      <div className="discovery-header">
        <h1 className="page-title">Khám phá Khóa học</h1>
        <p className="page-subtitle">Chọn cấp độ JLPT phù hợp để bắt đầu lộ trình chinh phục tiếng Nhật.</p>
      </div>

      <div className="filter-bar glass-effect">
        <div className="level-filters">
          {levels.map(level => (
            <button 
              key={level}
              className={`level-btn ${selectedLevel === level ? 'active' : ''}`}
              onClick={() => setSelectedLevel(level)}
            >
              {level}
            </button>
          ))}
        </div>
        <div className="search-mini">
           <input
             type="text"
             placeholder="Tìm khóa học..."
             className="search-input-mini"
             value={searchKeyword}
             onChange={(e) => setSearchKeyword(e.target.value)}
           />
        </div>
      </div>

      {loading ? (
        <div className="loading-container">
          <div className="loader"></div>
          <p>Đang tải danh sách khóa học...</p>
        </div>
      ) : (
        <div className="course-grid">
          {displayedCourses.length > 0 ? (
            displayedCourses.map(course => (
              <CourseCard key={course.id} course={course} />
            ))
          ) : (
            <div className="no-courses glass-effect">
              <h3>Chưa có khóa học nào ở cấp độ này</h3>
              <p>Vui lòng chọn cấp độ khác hoặc quay lại sau nhé!</p>
            </div>
          )}
        </div>
      )}
    </div>
  );
};

export default CourseList;
