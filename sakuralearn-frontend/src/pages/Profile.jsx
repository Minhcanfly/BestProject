import React, { useState, useRef } from 'react';
import { useAuth } from '../contexts/AuthContext';
import { userService } from '../services/userService';
import { 
  User, 
  Mail, 
  Languages, 
  Camera, 
  Save, 
  CircleUser,
  CheckCircle,
  AlertCircle
} from 'lucide-react';
import Button from '../components/Button';
import Input from '../components/Input';
import './Profile.css';

const Profile = () => {
  const { user, setUser } = useAuth();
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState('');
  const [error, setError] = useState('');
  
  const [formData, setFormData] = useState({
    fullName: user?.fullName || '',
    preferredLanguage: user?.preferredLanguage || 'vi',
  });
  
  const [avatarPreview, setAvatarPreview] = useState(user?.avatarUrl || null);
  const [avatarFile, setAvatarFile] = useState(null);
  const fileInputRef = useRef(null);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const handleFileChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      setAvatarFile(file);
      const reader = new FileReader();
      reader.onloadend = () => {
        setAvatarPreview(reader.result);
      };
      reader.readAsDataURL(file);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setSuccess('');
    setError('');

    try {
      const updateData = {
        ...formData,
        avatar: avatarFile
      };
      
      const response = await userService.updateProfile(user.id, updateData);
      
      // Update context and local storage
      const updatedUser = { ...user, ...response.data };
      setUser(updatedUser);
      localStorage.setItem('user', JSON.stringify(updatedUser));
      
      setSuccess('Thông tin hồ sơ đã được cập nhật thành công!');
    } catch (err) {
      setError(err.response?.data?.message || 'Có lỗi xảy ra khi cập nhật hồ sơ.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="profile-container">
      <div className="profile-header">
        <div className="profile-title-group">
          <h1>Hồ sơ cá nhân</h1>
          <p>Quản lý thông tin và cài đặt tài khoản của bạn</p>
        </div>
      </div>

      <div className="profile-content">
        <div className="profile-card glass-effect">
          <form onSubmit={handleSubmit}>
            <div className="avatar-section">
              <div className="avatar-edit-wrapper">
                <div className="profile-avatar-large">
                  {avatarPreview ? (
                    <img src={avatarPreview} alt="avatar" />
                  ) : (
                    <CircleUser size={80} strokeWidth={1} />
                  )}
                </div>
                <button 
                  type="button" 
                  className="camera-btn" 
                  onClick={() => fileInputRef.current.click()}
                >
                  <Camera size={18} />
                </button>
                <input 
                  type="file" 
                  ref={fileInputRef} 
                  onChange={handleFileChange} 
                  style={{ display: 'none' }} 
                  accept="image/*"
                />
              </div>
              <div className="avatar-info">
                <h3>{user?.fullName}</h3>
                <p>{user?.email}</p>
              </div>
            </div>

            <hr className="divider" />

            <div className="form-sections">
              <div className="form-group">
                <label><User size={18} /> Họ và tên</label>
                <Input
                  name="fullName"
                  value={formData.fullName}
                  onChange={handleChange}
                  placeholder="Nhập họ tên đầy đủ"
                  required
                />
              </div>

              <div className="form-group">
                <label><Mail size={18} /> Email (Không thể thay đổi)</label>
                <Input
                  value={user?.email || ''}
                  disabled
                  readOnly
                  className="disabled-input"
                />
              </div>

              <div className="form-group">
                <label><Languages size={18} /> Ngôn ngữ ưu tiên</label>
                <select 
                  name="preferredLanguage" 
                  value={formData.preferredLanguage} 
                  onChange={handleChange}
                  className="custom-select"
                >
                  <option value="vi">Tiếng Việt</option>
                  <option value="ja">Tiếng Nhật</option>
                  <option value="en">Tiếng Anh</option>
                </select>
              </div>
            </div>

            {success && (
              <div className="status-msg success">
                <CheckCircle size={18} /> {success}
              </div>
            )}
            
            {error && (
              <div className="status-msg error">
                <AlertCircle size={18} /> {error}
              </div>
            )}

            <div className="form-footer">
              <Button type="submit" loading={loading} variant="primary">
                <Save size={18} /> Lưu thay đổi
              </Button>
            </div>
          </form>
        </div>

        <div className="stats-sidebar">
           <div className="achievements-card glass-effect">
              <h3>Thành tích</h3>
              <div className="achievement-list">
                 <div className="achievement-item">
                    <div className="badge gold">🏆</div>
                    <div>
                      <p className="badge-name">Chăm chỉ</p>
                      <p className="badge-desc">7 ngày liên tiếp</p>
                    </div>
                 </div>
                 <div className="achievement-item">
                    <div className="badge silver">📚</div>
                    <div>
                      <p className="badge-name">Học sĩ</p>
                      <p className="badge-desc">Học 50 từ vựng</p>
                    </div>
                 </div>
              </div>
           </div>
        </div>
      </div>
    </div>
  );
};

export default Profile;
