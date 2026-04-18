import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider, useAuth } from './contexts/AuthContext';
import AuthLayout from './layouts/AuthLayout';
import MainLayout from './layouts/MainLayout';
import Login from './pages/Login';
import Register from './pages/Register';
import ForgotPassword from './pages/ForgotPassword';
import ResetPassword from './pages/ResetPassword';
import OAuth2RedirectHandler from './pages/OAuth2RedirectHandler';
import Dashboard from './pages/Dashboard';
import Profile from './pages/Profile';
import UserManagement from './pages/admin/UserManagement';

// Protected Route Component
const ProtectedRoute = ({ children }) => {
  const { user, loading } = useAuth();
  
  if (loading) return (
    <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh', background: 'var(--bg-main)' }}>
      <div className="loader"></div>
    </div>
  );
  
  if (!user) return <Navigate to="/login" />;
  return children;
};

// Admin Route Component (Checks for ADMIN role)
const AdminRoute = ({ children }) => {
  const { user, loading, hasRole } = useAuth();
  if (loading) return null;
  if (!user || !hasRole('ADMIN')) {
    return <Navigate to="/" />;
  }
  return children;
};

// Guest Route Component (Prevents logged in users from seeing login/register)
const GuestRoute = ({ children }) => {
  const { user, loading } = useAuth();
  if (loading) return null;
  if (user) return <Navigate to="/" />;
  return children;
};

function AppContent() {
  return (
    <Routes>
      {/* Auth Routes */}
      <Route path="/login" element={
        <GuestRoute>
          <AuthLayout>
            <Login />
          </AuthLayout>
        </GuestRoute>
      } />
      <Route path="/register" element={
        <GuestRoute>
          <AuthLayout>
            <Register />
          </AuthLayout>
        </GuestRoute>
      } />
      <Route path="/forgot-password" element={
        <GuestRoute>
          <AuthLayout>
            <ForgotPassword />
          </AuthLayout>
        </GuestRoute>
      } />
      <Route path="/reset-password" element={
        <GuestRoute>
          <AuthLayout>
            <ResetPassword />
          </AuthLayout>
        </GuestRoute>
      } />
      
      {/* OAuth2 Handler */}
      <Route path="/oauth2/redirect" element={<OAuth2RedirectHandler />} />

      {/* Main App Protected Routes */}
      <Route path="/" element={
        <ProtectedRoute>
          <MainLayout title="Dashboard">
             <Dashboard />
          </MainLayout>
        </ProtectedRoute>
      } />

      <Route path="/profile" element={
        <ProtectedRoute>
          <MainLayout title="Trang cá nhân">
             <Profile />
          </MainLayout>
        </ProtectedRoute>
      } />

      {/* Admin Protected Routes */}
      <Route path="/admin/users" element={
        <ProtectedRoute>
          <AdminRoute>
            <MainLayout title="Quản lý người dùng">
               <UserManagement />
            </MainLayout>
          </AdminRoute>
        </ProtectedRoute>
      } />

      {/* Fallback */}
      <Route path="*" element={<Navigate to="/" />} />
    </Routes>
  );
}

function App() {
  return (
    <AuthProvider>
      <Router>
        <div className="app-container">
          <AppContent />
        </div>
      </Router>
    </AuthProvider>
  );
}

export default App;
