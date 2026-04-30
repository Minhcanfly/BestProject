import React from 'react';
import { NavLink } from 'react-router-dom';
import { 
  Home, 
  BookOpen, 
  Notebook, 
  User, 
  Layers,
  Settings, 
  ShieldAlert,
  LogOut,
  Library,
  X
} from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';
import { ROUTES } from '../constants/routes';
import './Sidebar.css';

const Sidebar = ({ isOpen, onClose }) => {
  const { user, logout, hasRole } = useAuth();
  
  const isAdmin = hasRole('ADMIN');
  const isTeacher = hasRole('TEACHER') || isAdmin;

  const menuItems = [
    { name: 'Dashboard', icon: Home, path: '/' },
    { name: 'Khóa học', icon: BookOpen, path: ROUTES.COURSES },
    { name: 'Thư viện', icon: Library, path: ROUTES.LIBRARY },
    { name: 'Khóa học của tôi', icon: Layers, path: ROUTES.MY_COURSES },
    { name: 'Sổ tay', icon: Notebook, path: '/notebook' },
    { name: 'Trang cá nhân', icon: User, path: '/profile' },
  ];

  const teacherItems = [
    { name: 'Quản lý bài giảng', icon: Layers, path: '/teacher/courses' },
  ];

  const adminItems = [
    { name: 'Quản lý User', icon: ShieldAlert, path: '/admin/users' },
  ];

  return (
    <aside className={`sidebar glass-effect ${isOpen ? 'open' : ''}`}>
      <div className="sidebar-header">
        <div className="logo">
          <span className="logo-icon">🌸</span>
          <span className="logo-text">SakuraLearn</span>
        </div>
        <button className="mobile-close-btn" onClick={onClose}>
          <X size={24} />
        </button>
      </div>

      <nav className="sidebar-nav">
        <div className="nav-section">
          <p className="section-title">Menu</p>
          <ul>
            {menuItems.map((item) => (
              <li key={item.path}>
                <NavLink to={item.path} className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>
                  <item.icon size={20} />
                  <span>{item.name}</span>
                </NavLink>
              </li>
            ))}
          </ul>
        </div>

        {isTeacher && (
          <div className="nav-section">
            <p className="section-title">Teacher Space</p>
            <ul>
              {teacherItems.map((item) => (
                <li key={item.path}>
                  <NavLink to={item.path} className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>
                    <item.icon size={20} />
                    <span>{item.name}</span>
                  </NavLink>
                </li>
              ))}
            </ul>
          </div>
        )}

        {isAdmin && (
          <div className="nav-section">
            <p className="section-title">Admin Space</p>
            <ul>
              {adminItems.map((item) => (
                <li key={item.path}>
                  <NavLink to={item.path} className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>
                    <item.icon size={20} />
                    <span>{item.name}</span>
                  </NavLink>
                </li>
              ))}
            </ul>
          </div>
        )}
      </nav>

      <div className="sidebar-footer">
        <button onClick={logout} className="logout-btn">
          <LogOut size={20} />
          <span>Đăng xuất</span>
        </button>
      </div>
    </aside>
  );
};

export default Sidebar;
