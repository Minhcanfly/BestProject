import React, { useState, useEffect, useCallback } from 'react';
import { adminService } from '../../services/adminService';
import { 
  Search, 
  UserCheck, 
  UserMinus, 
  Shield, 
  ShieldCheck, 
  GraduationCap,
  Calendar,
  MoreVertical,
  ChevronLeft,
  ChevronRight,
  Filter
} from 'lucide-react';
import Button from '../../components/Button';
import './UserManagement.css';

const AdminUserManagement = () => {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(0);
  const [message, setMessage] = useState({ type: '', text: '' });
  const [openMenuId, setOpenMenuId] = useState(null);

  const fetchUsers = useCallback(async () => {
    setLoading(true);
    try {
      const response = await adminService.getAllUsers(page, 10, searchTerm);
      setUsers(response.data.content);
      setTotalPages(response.data.totalPages);
    } catch (err) {
      setMessage({ type: 'error', text: 'Không thể tải danh sách người dùng.' });
    } finally {
      setLoading(false);
    }
  }, [page, searchTerm]);

  useEffect(() => {
    const timer = setTimeout(() => {
      fetchUsers();
    }, 500); // Debounce search
    return () => clearTimeout(timer);
  }, [fetchUsers]);

  // Handle click outside to close menu
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (openMenuId && !event.target.closest('.action-group')) {
        setOpenMenuId(null);
      }
    };
    document.addEventListener('click', handleClickOutside);
    return () => document.removeEventListener('click', handleClickOutside);
  }, [openMenuId]);

  const handleToggleStatus = async (userId, currentStatus) => {
    try {
      await adminService.updateUserStatus(userId, !currentStatus);
      setMessage({ type: 'success', text: 'Cập nhật trạng thái người dùng thành công!' });
      fetchUsers();
    } catch (err) {
      setMessage({ type: 'error', text: 'Lỗi khi cập nhật trạng thái.' });
    }
  };

  const handleRoleChange = async (userId, roles) => {
    try {
      await adminService.updateUserRoles(userId, roles);
      setMessage({ type: 'success', text: 'Cập nhật quyền thành công!' });
      fetchUsers();
    } catch (err) {
      setMessage({ type: 'error', text: 'Lỗi khi cập nhật quyền.' });
    }
  };

  const getRoleIcon = (roles) => {
    if (roles.includes('ADMIN')) return <ShieldCheck size={16} className="role-icon admin" />;
    if (roles.includes('TEACHER')) return <Shield size={16} className="role-icon teacher" />;
    return <GraduationCap size={16} className="role-icon student" />;
  };

  return (
    <div className="admin-users-container">
      <div className="admin-header">
        <div className="title-section">
          <h1>Quản lý người dùng</h1>
          <p>Danh sách và quyền hạn thành viên hệ thống</p>
        </div>
        
        <div className="admin-actions">
          <div className="search-box glass-effect">
            <Search size={18} />
            <input 
              type="text" 
              placeholder="Tìm kiếm theo tên hoặc email..." 
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
          <button className="filter-btn glass-effect"><Filter size={18} /></button>
        </div>
      </div>

      {message.text && (
        <div className={`notification-banner ${message.type}`}>
          {message.text}
          <button onClick={() => setMessage({ type: '', text: '' })}>×</button>
        </div>
      )}

      <div className="users-table-wrapper glass-effect">
        <table className="users-table">
          <thead>
            <tr>
              <th>Người dùng</th>
              <th>Vai trò</th>
              <th>Trạng thái</th>
              <th>Ngày tham gia</th>
              <th>Hoạt động cuối</th>
              <th className="text-right">Thao tác</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr>
                <td colSpan="6" className="table-loader-cell">
                  <div className="loader"></div>
                </td>
              </tr>
            ) : users.map((u) => (
              <tr key={u.id}>
                <td>
                  <div className="user-cell">
                    <div className="table-avatar">
                       {u.fullName.charAt(0)}
                    </div>
                    <div className="user-meta">
                      <p className="u-name">{u.fullName}</p>
                      <p className="u-email">{u.email}</p>
                    </div>
                  </div>
                </td>
                <td>
                  <div className="role-badge">
                    {getRoleIcon(u.roles)}
                    <span>{u.roles[0]}</span>
                  </div>
                </td>
                <td>
                  <span className={`status-dot ${u.isActive ? 'active' : 'blocked'}`}>
                    {u.isActive ? 'Đang hoạt động' : 'Đã khóa'}
                  </span>
                </td>
                <td>
                  <div className="date-cell">
                    <Calendar size={14} /> 
                    <span>{new Date(u.createdAt).toLocaleDateString('vi-VN')}</span>
                  </div>
                </td>
                <td>{u.lastActivityDate ? new Date(u.lastActivityDate).toLocaleDateString('vi-VN') : 'Chưa có hoạt động'}</td>
                <td className="text-right">
                  <div className="action-group">
                    <button 
                      className={`control-btn ${u.isActive ? 'block' : 'unblock'}`}
                      onClick={() => handleToggleStatus(u.id, u.isActive)}
                      title={u.isActive ? 'Khóa tài khoản' : 'Mở khóa'}
                    >
                      {u.isActive ? <UserMinus size={18} /> : <UserCheck size={18} />}
                    </button>
                    
                    <button 
                      className="control-btn promote"
                      onClick={() => handleRoleChange(u.id, u.roles.includes('TEACHER') ? ['STUDENT'] : ['STUDENT', 'TEACHER'])}
                      title={u.roles.includes('TEACHER') ? 'Hạ cấp xuống Học viên' : 'Thăng cấp Giảng viên'}
                    >
                      <Shield size={18} />
                    </button>
                    
                    <div className="relative-menu-container">
                      <button 
                        className="control-btn more"
                        onClick={() => setOpenMenuId(openMenuId === u.id ? null : u.id)}
                      >
                        <MoreVertical size={18} />
                      </button>
                      
                      {openMenuId === u.id && (
                        <div className="dropdown-menu glass-effect">
                          <button onClick={() => {
                            setMessage({ type: 'info', text: 'Chức năng xem hồ sơ đang được phát triển.' });
                            setOpenMenuId(null);
                          }}>
                            Xem chi tiết
                          </button>
                        </div>
                      )}
                    </div>
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>

        <div className="pagination">
          <p>Trang {page + 1} / {totalPages || 1}</p>
          <div className="pagin-btns">
            <button 
              disabled={page === 0} 
              onClick={() => setPage(p => p - 1)}
            >
              <ChevronLeft size={20} />
            </button>
            <button 
              disabled={page >= totalPages - 1} 
              onClick={() => setPage(p => p + 1)}
            >
              <ChevronRight size={20} />
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AdminUserManagement;
