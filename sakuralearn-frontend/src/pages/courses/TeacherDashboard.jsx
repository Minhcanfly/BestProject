import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { courseService } from '../../services/courseService';
import { 
  Plus, 
  Settings, 
  Trash2, 
  Eye, 
  Layers, 
  Zap, 
  CheckCircle, 
  XCircle,
  UploadCloud,
  FileText
} from 'lucide-react';
import { formatCurrency } from '../../utils/formatters';
import { getApiErrorMessage } from '../../utils/apiError';
import { ROUTES } from '../../constants/routes';
import StatusMessage from '../../components/common/StatusMessage';
import './TeacherDashboard.css';

const TeacherDashboard = () => {
  const [courses, setCourses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');
  const [showAiModal, setShowAiModal] = useState(false);
  const [selectedAiCourse, setSelectedAiCourse] = useState(null);
  const [selectedAiProvider, setSelectedAiProvider] = useState('GEMINI_PRO');
  const navigate = useNavigate();

  useEffect(() => {
    fetchMyCourses();
  }, []);

  const fetchMyCourses = async () => {
    setLoading(true);
    setErrorMessage('');
    setSuccessMessage('');
    try {
      const response = await courseService.getManagedCourses();
      setCourses(response.data);
    } catch (error) {
      console.error('Lỗi khi tải danh sách khóa học:', error);
      setErrorMessage(getApiErrorMessage(error, 'Không thể tải danh sách khóa học.'));
    } finally {
      setLoading(false);
    }
  };

  const handleGenerateSyllabus = async (course) => {
    if (!course) return;
    if (!window.confirm(`Bạn có muốn hệ thống tự động tạo khung giáo trình mẫu cho khóa học "${course.titleVi}" không? Nội dung này hoàn toàn miễn phí.`)) return;
    
    try {
      setErrorMessage('');
      setSuccessMessage('');
      setShowAiModal(false);
      
      // Mặc định gọi model để Backend xử lý (sẽ trả về Template nếu AI lỗi)
      await courseService.generateSyllabus(course.id, 'GEMINI_PRO');
      setSuccessMessage(`Đã tạo giáo trình mẫu thành công cho khóa học.`);
      fetchMyCourses();
    } catch (error) {
      setErrorMessage(getApiErrorMessage(error, 'Lỗi khi tạo giáo trình mẫu.'));
    }
  };

  const handleDeleteCourse = async (id) => {
    if (!window.confirm('Bạn có chắc muốn xóa khóa học này không? (Dữ liệu sẽ bị ẩn đi)')) return;
    try {
      setErrorMessage('');
      setSuccessMessage('');
      await courseService.deleteCourse(id);
      setSuccessMessage('Đã xóa khóa học thành công.');
      fetchMyCourses();
    } catch (error) {
      setErrorMessage(getApiErrorMessage(error, 'Không thể xóa khóa học.'));
    }
  };

  const togglePublish = async (id, currentStatus) => {
    try {
      setErrorMessage('');
      setSuccessMessage('');
      await courseService.publishCourse(id, !currentStatus);
      setSuccessMessage(!currentStatus ? 'Đã công khai khóa học.' : 'Đã chuyển khóa học về bản nháp.');
      fetchMyCourses();
    } catch (error) {
      setErrorMessage(getApiErrorMessage(error, 'Lỗi khi cập nhật trạng thái.'));
    }
  };

  return (
    <div className="teacher-dashboard">
      <div className="dashboard-header">
        <div>
          <h1>Quản lý Khóa học</h1>
          <p>Tạo và tối ưu hóa nội dung giảng dạy của bạn</p>
        </div>
        <button className="add-course-btn" onClick={() => navigate(ROUTES.TEACHER_COURSE_NEW)}>
          <Plus size={18} /> Tạo khóa học mới
        </button>
      </div>
      <StatusMessage type="error" message={errorMessage} />
      <StatusMessage type="success" message={successMessage} />

      <div className="stats-cards-mini">
        <div className="stat-card-mini glass-effect">
          <span className="stat-value">{courses.length}</span>
          <span className="stat-label">Tổng khóa học</span>
        </div>
        <div className="stat-card-mini glass-effect">
          <span className="stat-value">{courses.filter(c => c.isPublished).length}</span>
          <span className="stat-label">Đang hiển thị</span>
        </div>
      </div>

      <div className="courses-table-container glass-effect">
        <table className="teacher-table">
          <thead>
            <tr>
              <th>Thông tin khóa học</th>
              <th>Cấp độ</th>
              <th>Bài học</th>
              <th>Trạng thái</th>
              <th className="text-right">Thao tác</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr><td colSpan="5" className="loading-cell"><div className="loader"></div></td></tr>
            ) : courses.map(course => (
              <tr key={course.id}>
                <td>
                  <div className="course-cell-info">
                    <div className="mini-thumb">
                       {course.thumbnailUrl ? <img src={course.thumbnailUrl} alt="" /> : '🌸'}
                    </div>
                    <div>
                      <p className="c-name">{course.titleVi}</p>
                      <p className="c-price">{formatCurrency(course.price)}</p>
                    </div>
                  </div>
                </td>
                <td><span className="lvl-tag">{course.jlptLevel}</span></td>
                <td>
                   <div className="lesson-count-badge">
                     <Layers size={14} /> {course.lessonCount || 0} bài
                   </div>
                </td>
                <td>
                  <div className={`status-pill ${course.isPublished ? 'published' : 'draft'}`}>
                    {course.isPublished ? <CheckCircle size={14} /> : <XCircle size={14} />}
                    {course.isPublished ? 'Công khai' : 'Bản nháp'}
                  </div>
                </td>
                <td className="text-right">
                  <div className="actions-group-teacher">
                    <button 
                      className={`t-action-btn ${course.isPublished ? 'unpublish' : 'publish'}`} 
                      title={course.isPublished ? 'Hủy công khai' : 'Công khai khóa học'} 
                      onClick={() => togglePublish(course.id, course.isPublished)}
                    >
                      {course.isPublished ? <XCircle size={18} /> : <UploadCloud size={18} />}
                    </button>
                    <button className="t-action-btn ai" title="Tạo giáo trình mẫu (Free)" onClick={() => handleGenerateSyllabus(course)}>
                      <Zap size={18} />
                    </button>
                    <button className="t-action-btn syllabus" title="Quản lý Giáo trình" onClick={() => navigate(ROUTES.TEACHER_SYLLABUS(course.id))}>
                      <FileText size={18} />
                    </button>
                    <button className="t-action-btn edit" title="Chỉnh sửa thông tin" onClick={() => navigate(ROUTES.TEACHER_COURSE_EDIT(course.id))}>
                      <Settings size={18} />
                    </button>
                    <button className="t-action-btn view" title="Xem trước" onClick={() => navigate(ROUTES.COURSE_DETAIL(course.id))}>
                      <Eye size={18} />
                    </button>
                    <button className="t-action-btn delete" title="Xóa" onClick={() => handleDeleteCourse(course.id)}>
                      <Trash2 size={18} />
                    </button>
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* AI Model Selection Modal - Tạm thời ẩn để tiết kiệm chi phí API */}
      {/* 
      {showAiModal && (
        <div className="ai-modal-overlay">
          ... (Code modal giữ nguyên để mở lại sau này)
        </div>
      )}
      */}
    </div>
  );
};

export default TeacherDashboard;
