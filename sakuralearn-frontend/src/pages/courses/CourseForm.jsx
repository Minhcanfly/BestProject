import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { courseService } from '../../services/courseService';
import { ChevronLeft, Upload, Save, Layers } from 'lucide-react';
import { getApiErrorMessage } from '../../utils/apiError';
import { ROUTES } from '../../constants/routes';
import './CourseForm.css';

const CourseForm = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const isEditMode = !!id;

  const [formData, setFormData] = useState({
    titleVi: '',
    titleJa: '',
    titleEn: '',
    descriptionVi: '',
    descriptionJa: '',
    descriptionEn: '',
    jlptLevel: 'N5',
    price: 0,
    durationMinutes: 0
  });
  const [thumbnail, setThumbnail] = useState(null);
  const [preview, setPreview] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  useEffect(() => {
    if (isEditMode) {
      fetchCourseData();
    }
  }, [id]);

  const fetchCourseData = async () => {
    setLoading(true);
    setError(null);
    try {
      const response = await courseService.getCourseById(id);
      const data = response.data;
      if (!data) throw new Error('Không tìm thấy thông tin khóa học');

      setFormData({
        titleVi: data.titleVi || '',
        titleJa: data.titleJa || '',
        titleEn: data.titleEn || '',
        descriptionVi: data.descriptionVi || '',
        descriptionJa: data.descriptionJa || '',
        descriptionEn: data.descriptionEn || '',
        jlptLevel: data.jlptLevel || 'N5',
        price: data.price || 0,
        durationMinutes: data.durationMinutes || 0
      });
      if (data.thumbnailUrl) setPreview(data.thumbnailUrl);
    } catch (err) {
      console.error('Error fetching course:', err);
      setError(getApiErrorMessage(err, 'Không thể tải dữ liệu khóa học. Vui lòng thử lại.'));
    } finally {
      setLoading(false);
    }
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const handleFileChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      setThumbnail(file);
      setPreview(URL.createObjectURL(file));
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    const submitData = new FormData();
    Object.keys(formData).forEach(key => {
      submitData.append(key, formData[key]);
    });
    if (thumbnail) {
      submitData.append('thumbnail', thumbnail);
    }

    try {
      if (isEditMode) {
        await courseService.updateCourse(id, submitData);
      } else {
        await courseService.createCourse(submitData);
      }
      navigate(ROUTES.TEACHER_COURSES);
    } catch (err) {
      setError(getApiErrorMessage(err, 'Lỗi khi lưu khóa học. Vui lòng kiểm tra lại thông tin.'));
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="course-form-page">
      <div className="form-header">
        <button className="home-btn-mini" onClick={() => navigate(ROUTES.HOME)} title="Về trang chủ">🌸</button>
        <button className="back-btn" onClick={() => navigate(ROUTES.TEACHER_COURSES)}>
          <ChevronLeft size={20} /> Quay lại
        </button>
        <h1>{isEditMode ? 'Chỉnh sửa khóa học' : 'Tạo khóa học mới'}</h1>
      </div>

      {error ? (
        <div className="form-error-view glass-effect">
          <p>{error}</p>
          <button
            onClick={() => {
              if (isEditMode) {
                fetchCourseData();
              } else {
                setError(null);
              }
            }}
            className="retry-btn"
          >
            {isEditMode ? 'Thử lại' : 'Đóng'}
          </button>
        </div>
      ) : (
        <form className="course-form glass-effect" onSubmit={handleSubmit}>
          <div className="form-grid">
            <div className="form-main">
              <div className="form-group">
                <label>Tiêu đề (Tiếng Việt) *</label>
                <input
                  type="text"
                  name="titleVi"
                  value={formData.titleVi}
                  onChange={handleInputChange}
                  required
                  placeholder="Ví dụ: Tiếng Nhật sơ cấp N5"
                />
              </div>

              <div className="form-row">
                <div className="form-group">
                  <label>Tiêu đề (Tiếng Nhật)</label>
                  <input type="text" name="titleJa" value={formData.titleJa} onChange={handleInputChange} placeholder="日本語 N5" />
                </div>
                <div className="form-group">
                  <label>Cấp độ JLPT</label>
                  <select name="jlptLevel" value={formData.jlptLevel} onChange={handleInputChange}>
                    <option value="N5">N5</option>
                    <option value="N4">N4</option>
                    <option value="N3">N3</option>
                    <option value="N2">N2</option>
                    <option value="N1">N1</option>
                  </select>
                </div>
              </div>

              <div className="form-group">
                <label>Mô tả chi tiết</label>
                <textarea
                  name="descriptionVi"
                  value={formData.descriptionVi}
                  onChange={handleInputChange}
                  rows="6"
                  placeholder="Mô tả nội dung học tập..."
                ></textarea>
              </div>

              <div className="form-row">
                <div className="form-group">
                  <label>Giá (VNĐ)</label>
                  <input type="number" name="price" value={formData.price} onChange={handleInputChange} />
                </div>
                <div className="form-group">
                  <label>Thời lượng dự kiến (Phút)</label>
                  <input type="number" name="durationMinutes" value={formData.durationMinutes} onChange={handleInputChange} />
                </div>
              </div>
            </div>

            <aside className="form-side">
              <div className="thumbnail-upload">
                <label>Ảnh bìa khóa học</label>
                <div className="thumbnail-preview-container" onClick={() => document.getElementById('thumb-input').click()}>
                  {preview ? (
                    <img src={preview} alt="Preview" className="thumb-preview" />
                  ) : (
                    <div className="thumb-empty">
                      <Upload size={30} />
                      <span>Tải ảnh lên</span>
                    </div>
                  )}
                  <input type="file" id="thumb-input" hidden onChange={handleFileChange} accept="image/*" />
                </div>
                <p className="hint">Khuyến nghị: Tỷ lệ 16:9, tối đa 2MB</p>
              </div>

              <div className="form-actions-sticky">
                <button type="submit" className="save-btn" disabled={loading}>
                  {loading ? 'Đang lưu...' : <><Save size={18} /> Lưu khóa học</>}
                </button>
                {isEditMode && (
                  <button type="button" className="syllabus-btn" onClick={() => navigate(ROUTES.TEACHER_SYLLABUS(id))}>
                    <Layers size={18} /> Quản lý Giáo trình
                  </button>
                )}
              </div>
            </aside>
          </div>
        </form>
      )}
    </div>
  );
};

export default CourseForm;
