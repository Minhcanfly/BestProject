import React, { useState, useEffect } from 'react';
import { useAuth } from '../contexts/AuthContext';
import { 
  Trophy, 
  Target, 
  Clock, 
  ArrowRight,
  Zap,
  Flame,
  Star,
  Users,
  BookOpen,
  DollarSign,
  ClipboardList,
  PlusCircle,
  BarChart3,
  LayoutDashboard,
  Brain
} from 'lucide-react';
import { enrollmentService } from '../services/enrollmentService';
import { adminService } from '../services/adminService';
import { courseService } from '../services/courseService';
import { srsService } from '../services/srsService';
import { ROUTES } from '../constants/routes';
import { useNavigate } from 'react-router-dom';
import './Dashboard.css';

const Dashboard = () => {
  const { user, hasRole } = useAuth();
  const navigate = useNavigate();
  
  if (hasRole('ADMIN')) return <AdminDashboard user={user} navigate={navigate} />;
  if (hasRole('TEACHER')) return <TeacherDashboard user={user} navigate={navigate} />;
  return <StudentDashboard user={user} navigate={navigate} />;
};

const AdminDashboard = ({ user, navigate }) => {
  const [stats, setStats] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchStats = async () => {
      try {
        const response = await adminService.getDashboardStats();
        setStats(response.data);
      } catch (err) {
        console.error('Error fetching admin stats:', err);
      } finally {
        setLoading(false);
      }
    };
    fetchStats();
  }, []);

  const adminStats = [
    { label: 'Tổng người dùng', value: stats?.totalUsers || 0, icon: Users, color: '#48dbfb' },
    { label: 'Khóa học active', value: stats?.totalCourses || 0, icon: BookOpen, color: '#1dd1a1' },
    { label: 'Doanh thu (VNĐ)', value: stats?.totalRevenue?.toLocaleString() || 0, icon: DollarSign, color: '#ff9f43' },
    { label: 'Chờ duyệt', value: stats?.pendingReviews || 0, icon: ClipboardList, color: '#feca57' },
  ];

  return (
    <div className="dashboard-container admin-theme">
      <header className="dashboard-header">
        <div className="header-text">
          <h1>Hệ thống quản trị 🛠️</h1>
          <p>Chào mừng trở lại, {user?.fullName}. Dưới đây là tổng quan hệ thống hôm nay.</p>
        </div>
      </header>

      <div className="stats-grid">
        {adminStats.map((stat, index) => (
          <div key={index} className="stat-card glass-effect">
            <div className="stat-icon" style={{ backgroundColor: `${stat.color}15`, color: stat.color }}>
              <stat.icon size={24} />
            </div>
            <div className="stat-details">
              <h3>{loading ? '...' : stat.value}</h3>
              <p>{stat.label}</p>
            </div>
          </div>
        ))}
      </div>

      <div className="dashboard-sections">
        <section className="quick-actions-section glass-effect">
          <div className="section-header">
            <h2>Thao tác nhanh</h2>
            <LayoutDashboard size={20} className="text-muted" />
          </div>
          <div className="actions-grid">
            <button className="action-card glass-effect-light" onClick={() => navigate('/admin/users')}>
              <Users size={32} />
              <span>Quản lý User</span>
            </button>
            <button className="action-card glass-effect-light" onClick={() => navigate('/courses')}>
              <BookOpen size={32} />
              <span>Quản lý Khóa học</span>
            </button>
            <button className="action-card glass-effect-light">
              <BarChart3 size={32} />
              <span>Báo cáo doanh thu</span>
            </button>
          </div>
        </section>

        <section className="system-status glass-effect">
           <div className="section-header">
              <h2>Trạng thái hệ thống</h2>
              <Zap size={20} className="text-success" />
           </div>
           <div className="status-list">
              <div className="status-item">
                <span>API Server</span>
                <span className="status-badge online">Online</span>
              </div>
              <div className="status-item">
                <span>Database</span>
                <span className="status-badge online">Online</span>
              </div>
              <div className="status-item">
                <span>Storage (MinIO)</span>
                <span className="status-badge online">Online</span>
              </div>
           </div>
        </section>
      </div>
    </div>
  );
};

const TeacherDashboard = ({ user, navigate }) => {
  const [courses, setCourses] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchMyCourses = async () => {
      try {
        const response = await courseService.getManagedCourses();
        setCourses(response.data || []);
      } catch (err) {
        console.error('Error fetching teacher courses:', err);
      } finally {
        setLoading(false);
      }
    };
    fetchMyCourses();
  }, []);

  return (
    <div className="dashboard-container teacher-theme">
      <header className="dashboard-header">
        <div className="header-text">
          <h1>Góc giảng viên 👨‍🏫</h1>
          <p>Chào mừng thầy/cô {user?.fullName}. Chúc thầy/cô một ngày giảng dạy hiệu quả!</p>
        </div>
        <button className="cta-btn" onClick={() => navigate('/teacher/courses/new')}>
          <PlusCircle size={18} /> Tạo khóa học mới
        </button>
      </header>

      <div className="stats-grid">
        <div className="stat-card glass-effect">
          <div className="stat-icon" style={{ backgroundColor: '#48dbfb15', color: '#48dbfb' }}>
            <BookOpen size={24} />
          </div>
          <div className="stat-details">
            <h3>{courses.length}</h3>
            <p>Khóa học của tôi</p>
          </div>
        </div>
        <div className="stat-card glass-effect">
          <div className="stat-icon" style={{ backgroundColor: '#1dd1a115', color: '#1dd1a1' }}>
            <Users size={24} />
          </div>
          <div className="stat-details">
            <h3>--</h3>
            <p>Tổng học viên</p>
          </div>
        </div>
        <div className="stat-card glass-effect">
          <div className="stat-icon" style={{ backgroundColor: '#feca5715', color: '#feca57' }}>
            <Star size={24} />
          </div>
          <div className="stat-details">
            <h3>5.0</h3>
            <p>Đánh giá trung bình</p>
          </div>
        </div>
      </div>

      <div className="dashboard-sections">
        <section className="my-courses-section glass-effect">
          <div className="section-header">
            <h2>Khóa học đang quản lý</h2>
            <button className="text-link" onClick={() => navigate('/teacher/courses')}>Quản lý bài giảng</button>
          </div>
          <div className="teacher-courses-list">
             {loading ? (
               <div className="loader-small"></div>
             ) : courses.length > 0 ? (
               courses.slice(0, 3).map(course => (
                 <div key={course.id} className="course-item-horizontal glass-effect-light">
                   <div className="course-main">
                      <h4>{course.titleVi}</h4>
                      <span className="course-badge">{course.jlptLevel}</span>
                   </div>
                   <button className="edit-btn" onClick={() => navigate(`/teacher/courses/edit/${course.id}`)}>Chỉnh sửa</button>
                 </div>
               ))
             ) : (
               <p className="empty-msg">Thầy/cô chưa có khóa học nào.</p>
             )}
          </div>
        </section>
      </div>
    </div>
  );
};

const StudentDashboard = ({ user, navigate }) => {
  const [enrollments, setEnrollments] = useState([]);
  const [dueCount, setDueCount] = useState(0);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [enrollRes, srsRes] = await Promise.all([
          enrollmentService.getMyEnrollments(),
          srsService.getDueCards(0, 1) // Just to get totalElements
        ]);
        setEnrollments(enrollRes.data || []);
        setDueCount(srsRes.data.totalElements || 0);
      } catch (err) {
        console.error('Error fetching dashboard data:', err);
      } finally {
        setLoading(false);
      }
    };
    fetchData();
  }, []);

  const stats = [
    { label: 'Ngày học liên tục', value: user?.currentStreak || 0, icon: Flame, color: '#ff9f43' },
    { label: 'Tổng số XP', value: user?.xp || 0, icon: Zap, color: '#48dbfb' },
    { label: 'Thẻ cần ôn (SRS)', value: dueCount, icon: Brain, color: '#9b59b6' },
    { label: 'Ngôn ngữ', value: user?.preferredLanguage === 'vi' ? 'Tiếng Việt' : 'English', icon: Clock, color: '#1dd1a1' },
  ];

  const firstEnrollment = enrollments.length > 0 ? enrollments[0] : null;

  return (
    <div className="dashboard-container">
      <section className="welcome-banner glass-effect">
        <div className="banner-content">
          <h1>Chào mừng trở lại, {user?.fullName}! 👋</h1>
          <p>
            {dueCount > 0 
              ? `Hôm nay bạn có ${dueCount} thẻ cần ôn tập. Hãy dành ít phút để ghi nhớ nhé!` 
              : firstEnrollment 
                ? `Bạn đã hoàn thành ${Math.round(firstEnrollment.progressPercentage)}% khóa học ${firstEnrollment.courseTitle}. Tiếp tục phát huy nhé!` 
                : 'Hãy bắt đầu hành trình chinh phục tiếng Nhật ngay hôm nay!'}
          </p>
          <div className="banner-actions">
            {dueCount > 0 && (
                <button className="cta-btn srs-btn" onClick={() => navigate(ROUTES.REVIEW)}>
                  Ôn tập ngay ({dueCount}) <Zap size={18} />
                </button>
            )}
            {firstEnrollment && (
              <button className={`cta-btn ${dueCount > 0 ? 'secondary' : ''}`} onClick={() => navigate(ROUTES.LEARNING(firstEnrollment.courseId))}>
                {dueCount > 0 ? 'Học tiếp' : 'Tiếp tục học ngay'} <ArrowRight size={18} />
              </button>
            )}
          </div>
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
            <button className="text-link" onClick={() => navigate(ROUTES.MY_COURSES)}>Xem tất cả</button>
          </div>
          <div className="learning-progress">
             {loading ? (
               <div className="loader-small"></div>
             ) : enrollments.length > 0 ? (
               enrollments.slice(0, 3).map(enrollment => (
                 <div key={enrollment.id} className="course-progress-card" onClick={() => navigate(ROUTES.LEARNING(enrollment.courseId))}>
                    <div className="course-info">
                       <span className="course-badge">{enrollment.jlptLevel || 'ALL'}</span>
                       <div>
                         <h4>{enrollment.courseTitle}</h4>
                         <p>Tiến độ học tập</p>
                       </div>
                    </div>
                    <div className="progress-bar-container">
                       <div className="progress-label">
                          <span>{Math.round(enrollment.progressPercentage)}%</span>
                       </div>
                       <div className="progress-bar-bg">
                          <div className="progress-bar-fill" style={{ width: `${enrollment.progressPercentage}%` }}></div>
                       </div>
                    </div>
                 </div>
               ))
             ) : (
               <div className="no-enrollments glass-effect-light">
                 <p>Bạn chưa tham gia khóa học nào.</p>
                 <button onClick={() => navigate(ROUTES.COURSES)}>Khám phá khóa học</button>
               </div>
             )}
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
