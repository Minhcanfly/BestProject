import React, { useCallback, useEffect, useState } from 'react';
import {
  Calendar,
  ChevronLeft,
  ChevronRight,
  Filter,
  GraduationCap,
  MoreVertical,
  Search,
  Shield,
  ShieldCheck,
  UserCheck,
  UserMinus,
  Users
} from 'lucide-react';
import { adminService } from '../../services/adminService';
import { getApiErrorMessage } from '../../utils/apiError';
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
      setUsers(response.data.content || []);
      setTotalPages(response.data.totalPages || 0);
    } catch (error) {
      setMessage({ type: 'error', text: getApiErrorMessage(error, 'Không thể tải danh sách người dùng.') });
    } finally {
      setLoading(false);
    }
  }, [page, searchTerm]);

  useEffect(() => {
    const timer = setTimeout(fetchUsers, 500);
    return () => clearTimeout(timer);
  }, [fetchUsers]);

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
      setMessage({ type: 'success', text: 'Cập nhật trạng thái người dùng thành công.' });
      fetchUsers();
    } catch (error) {
      setMessage({ type: 'error', text: getApiErrorMessage(error, 'Lỗi khi cập nhật trạng thái.') });
    }
  };

  const handleRoleChange = async (userId, roles) => {
    try {
      await adminService.updateUserRoles(userId, roles);
      setMessage({ type: 'success', text: 'Cập nhật quyền thành công.' });
      fetchUsers();
    } catch (error) {
      setMessage({ type: 'error', text: getApiErrorMessage(error, 'Lỗi khi cập nhật quyền.') });
    }
  };

  const getRoleIcon = (roles = []) => {
    if (roles.includes('ADMIN')) return <ShieldCheck size={16} className="role-icon admin" />;
    if (roles.includes('TEACHER')) return <Shield size={16} className="role-icon teacher" />;
    return <GraduationCap size={16} className="role-icon student" />;
  };

  const getPrimaryRole = (roles = []) => roles[0] || 'STUDENT';

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
              onChange={(event) => {
                setPage(0);
                setSearchTerm(event.target.value);
              }}
            />
          </div>
          <button className="filter-btn glass-effect" title="Bộ lọc nâng cao">
            <Filter size={18} />
          </button>
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
            ) : users.length > 0 ? (
              users.map((user) => (
                <tr key={user.id}>
                  <td>
                    <div className="user-cell">
                      <div className="table-avatar">
                        {(user.fullName || user.email || '?').charAt(0).toUpperCase()}
                      </div>
                      <div className="user-meta">
                        <p className="u-name">{user.fullName || 'Chưa cập nhật tên'}</p>
                        <p className="u-email">{user.email}</p>
                      </div>
                    </div>
                  </td>
                  <td>
                    <div className="role-badge">
                      {getRoleIcon(user.roles)}
                      <span>{getPrimaryRole(user.roles)}</span>
                    </div>
                  </td>
                  <td>
                    <span className={`status-dot ${user.isActive ? 'active' : 'blocked'}`}>
                      {user.isActive ? 'Đang hoạt động' : 'Đã khóa'}
                    </span>
                  </td>
                  <td>
                    <div className="date-cell">
                      <Calendar size={14} />
                      <span>{user.createdAt ? new Date(user.createdAt).toLocaleDateString('vi-VN') : 'N/A'}</span>
                    </div>
                  </td>
                  <td>{user.lastActivityDate ? new Date(user.lastActivityDate).toLocaleDateString('vi-VN') : 'Chưa có hoạt động'}</td>
                  <td className="text-right">
                    <div className="action-group">
                      <button
                        className={`control-btn ${user.isActive ? 'block' : 'unblock'}`}
                        onClick={() => handleToggleStatus(user.id, user.isActive)}
                        title={user.isActive ? 'Khóa tài khoản' : 'Mở khóa'}
                      >
                        {user.isActive ? <UserMinus size={18} /> : <UserCheck size={18} />}
                      </button>

                      <button
                        className="control-btn promote"
                        onClick={() => handleRoleChange(
                          user.id,
                          user.roles?.includes('TEACHER') ? ['STUDENT'] : ['STUDENT', 'TEACHER']
                        )}
                        title={user.roles?.includes('TEACHER') ? 'Hạ cấp xuống học viên' : 'Thăng cấp giảng viên'}
                      >
                        <Shield size={18} />
                      </button>

                      <div className="relative-menu-container">
                        <button
                          className="control-btn more"
                          onClick={() => setOpenMenuId(openMenuId === user.id ? null : user.id)}
                          title="Thao tác khác"
                        >
                          <MoreVertical size={18} />
                        </button>

                        {openMenuId === user.id && (
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
              ))
            ) : (
              <tr>
                <td colSpan="6" className="empty-users-cell">
                  <Users size={34} />
                  <span>Không tìm thấy người dùng phù hợp.</span>
                </td>
              </tr>
            )}
          </tbody>
        </table>

        <div className="pagination">
          <p>Trang {page + 1} / {totalPages || 1}</p>
          <div className="pagin-btns">
            <button disabled={page === 0} onClick={() => setPage((current) => current - 1)}>
              <ChevronLeft size={20} />
            </button>
            <button disabled={page >= totalPages - 1} onClick={() => setPage((current) => current + 1)}>
              <ChevronRight size={20} />
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AdminUserManagement;
