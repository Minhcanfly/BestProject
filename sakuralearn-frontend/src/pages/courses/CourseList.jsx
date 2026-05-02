import React, { useState, useEffect } from 'react';
import { courseService } from '../../services/courseService';
import CourseCard from '../../components/courses/CourseCard';
import './CourseList.css';

const CourseList = () => {
  const [courses, setCourses] = useState([]);
  const [searchKeyword, setSearchKeyword] = useState('');
  const [loading, setLoading] = useState(true);
  const [selectedLevel, setSelectedLevel] = useState('ALL');
  const [maxPrice, setMaxPrice] = useState('');

  const levels = ['ALL', 'N5', 'N4', 'N3', 'N2', 'N1'];

  useEffect(() => {
    const timer = setTimeout(() => {
      fetchCourses();
    }, 500); // Debounce keyword search

    return () => clearTimeout(timer);
  }, [selectedLevel, searchKeyword, maxPrice]);

  const fetchCourses = async () => {
    setLoading(true);
    try {
      const params = {
        jlptLevel: selectedLevel !== 'ALL' ? selectedLevel : null,
        keyword: searchKeyword.trim() || null,
        maxPrice: maxPrice || null
      };
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
        <div className="search-group">
          <div className="price-filter">
             <input
               type="number"
               placeholder="Giá tối đa..."
               className="search-input-mini price-input"
               value={maxPrice}
               onChange={(e) => setMaxPrice(e.target.value)}
             />
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
      </div>

      {loading ? (
        <div className="loading-container">
          <div className="loader"></div>
          <p>Đang tải danh sách khóa học...</p>
        </div>
      ) : (
        <div className="course-grid">
          {courses.length > 0 ? (
            courses.map(course => (
              <CourseCard key={course.id} course={course} />
            ))
          ) : (
            <div className="no-courses glass-effect">
              <h3>Chưa tìm thấy khóa học nào phù hợp</h3>
              <p>Thử thay đổi từ khóa hoặc bộ lọc xem sao nhé!</p>
            </div>
          )}
        </div>
      )}
    </div>
  );
};

export default CourseList;
