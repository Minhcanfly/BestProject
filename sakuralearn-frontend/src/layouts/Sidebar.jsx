import React from 'react';
import { NavLink } from 'react-router-dom';
import { 
  Home, 
  BookOpen, 
  Notebook, 
  User, 
  Settings, 
  ShieldAlert,
  LogOut
} from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';
import './Sidebar.css';

const Sidebar = () => {
  const { user, logout, hasRole } = useAuth();
  
  const isAdmin = hasRole('ADMIN');

  const menuItems = [
    { name: 'Dashboard', icon: Home, path: '/' },
    { name: 'Khóa học', icon: BookOpen, path: '/courses' },
    { name: 'Sổ tay', icon: Notebook, path: '/notebook' },
    { name: 'Trang cá nhân', icon: User, path: '/profile' },
  ];

  const adminItems = [
    { name: 'Quản lý User', icon: ShieldAlert, path: '/admin/users' },
  ];

  return (
    <aside className="sidebar glass-effect">
      <div className="sidebar-header">
        <div className="logo">
          <span className="logo-icon">🌸</span>
          <span className="logo-text">SakuraLearn</span>
        </div>
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
