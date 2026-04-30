import { 
  Bell, 
  Search, 
  Settings, 
  User as UserIcon,
  Zap,
  Flame,
  Menu
} from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';
import './Navbar.css';

const Navbar = ({ title, onToggleSidebar }) => {
  const { user } = useAuth();

  return (
    <header className="navbar glass-effect">
      <div className="navbar-left">
        <button className="mobile-menu-btn" onClick={onToggleSidebar}>
          <Menu size={24} />
        </button>
        <h2 className="page-title">{title || 'Chào buổi sáng!'}</h2>
      </div>

      <div className="navbar-right">
        {/* User Stats */}
        <div className="user-stats">
          <div className="stat-item streak" title="Day Streak">
            <Flame size={18} />
            <span>{user?.currentStreak || 0}</span>
          </div>
          <div className="stat-item xp" title="Total XP">
            <Zap size={18} />
            <span>{user?.xp || 0} XP</span>
          </div>
        </div>

        {/* Action Icons */}
        <div className="navbar-actions">
          <button className="action-btn"><Search size={20} /></button>
          <button className="action-btn"><Bell size={20} /></button>
          <button className="action-btn"><Settings size={20} /></button>
        </div>

        {/* User Profile Summary */}
        <div className="user-profile-sm">
          <div className="user-info">
            <p className="user-name">{user?.fullName || 'User'}</p>
            <p className="user-role">{user?.roles?.[0]?.replace('ROLE_', '') || 'Student'}</p>
          </div>
          <div className="avatar-wrapper">
            {user?.avatarUrl ? (
              <img src={user.avatarUrl} alt="avatar" className="avatar" />
            ) : (
              <div className="avatar-placeholder">
                <UserIcon size={20} />
              </div>
            )}
            <div className="status-indicator online"></div>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Navbar;
