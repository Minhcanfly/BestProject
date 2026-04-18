import React from 'react';
import { useAuth } from '../contexts/AuthContext';
import { 
  Trophy, 
  Target, 
  Clock, 
  ArrowRight,
  Zap,
  Flame,
  Star
} from 'lucide-react';
import './Dashboard.css';

const Dashboard = () => {
  const { user } = useAuth();

  const stats = [
    { label: 'Ngày học liên tục', value: user?.currentStreak || 0, icon: Flame, color: '#ff9f43' },
    { label: 'Tổng số XP', value: user?.xp || 0, icon: Zap, color: '#48dbfb' },
    { label: 'Cấp độ hiện tại', value: 'N5', icon: Trophy, color: '#feca57' },
    { label: 'Giờ học đã dùng', value: '12h', icon: Clock, color: '#1dd1a1' },
  ];

  return (
    <div className="dashboard-container">
      <section className="welcome-banner glass-effect">
        <div className="banner-content">
          <h1>Chào mừng trở lại, {user?.fullName}! 👋</h1>
          <p>Bạn đã hoàn thành 80% mục tiêu học tập của tuần này. Tiếp tục phát huy nhé!</p>
          <button className="cta-btn">
            Học tiếp bài 14 <ArrowRight size={18} />
          </button>
        </div>
        <div className="banner-illustration">
          <div className="blobs">
            <div className="blob one"></div>
            <div className="blob two"></div>
          </div>
          <span className="cherry-blossom">🌸</span>
        </div>
      </section>

      <div className="stats-grid">
        {stats.map((stat, index) => (
          <div key={index} className="stat-card glass-effect">
            <div className="stat-icon" style={{ backgroundColor: `${stat.color}15`, color: stat.color }}>
              <stat.icon size={24} />
            </div>
            <div className="stat-details">
              <h3>{stat.value}</h3>
              <p>{stat.label}</p>
            </div>
          </div>
        ))}
      </div>

      <div className="dashboard-sections">
        <section className="recent-activity glass-effect">
          <div className="section-header">
            <h2>Tiến độ học tập</h2>
            <button className="text-link">Xem tất cả</button>
          </div>
          <div className="learning-progress">
             <div className="course-progress-card">
                <div className="course-info">
                   <span className="course-badge">N5</span>
                   <div>
                     <h4>Tiếng Nhật Sơ Cấp 1</h4>
                     <p>Bài 14: Thể Te và các ứng dụng</p>
                   </div>
                </div>
                <div className="progress-bar-container">
                   <div className="progress-label">
                      <span>45/100 Bài học</span>
                      <span>45%</span>
                   </div>
                   <div className="progress-bar-bg">
                      <div className="progress-bar-fill" style={{ width: '45%' }}></div>
                   </div>
                </div>
             </div>
          </div>
        </section>

        <section className="quick-goals glass-effect">
           <div className="section-header">
              <h2>Mục tiêu hôm nay</h2>
              <Target size={20} className="text-muted" />
           </div>
           <ul className="goals-list">
              <li className="goal-item completed">
                 <div className="check-box"><Star size={14} /></div>
                 <span>Học 5 từ vựng mới</span>
              </li>
              <li className="goal-item">
                 <div className="check-box"></div>
                 <span>Ôn tập 10 hán tự (SRS)</span>
              </li>
              <li className="goal-item">
                 <div className="check-box"></div>
                 <span>Hoàn thành 1 bài nghe</span>
              </li>
           </ul>
        </section>
      </div>
    </div>
  );
};

export default Dashboard;
