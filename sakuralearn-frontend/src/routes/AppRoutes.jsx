import React from 'react';
import { Routes, Route, Navigate } from 'react-router-dom';
import Login from '../pages/Login';
import Register from '../pages/Register';
import Dashboard from '../pages/Dashboard';
import Profile from '../pages/Profile';
import UserManagement from '../pages/admin/UserManagement';
import CourseList from '../pages/courses/CourseList';
import CourseDetail from '../pages/courses/CourseDetail';
import LearningView from '../pages/courses/LearningView';
import TeacherDashboard from '../pages/courses/TeacherDashboard';
import CourseForm from '../pages/courses/CourseForm';
import SyllabusManager from '../pages/courses/SyllabusManager';
import OAuth2RedirectHandler from '../pages/OAuth2RedirectHandler';
import MainLayout from '../layouts/MainLayout';
import AuthLayout from '../layouts/AuthLayout';
import { useAuth } from '../contexts/AuthContext';
import { ROUTES } from '../constants/routes';

// Protected Route Component
const ProtectedRoute = ({ children }) => {
  const { user, loading } = useAuth();
  if (loading) return <div className="loading-screen">Loading...</div>;
  if (!user) return <Navigate to={ROUTES.LOGIN} />;
  return children;
};

// Admin Route Component
const AdminRoute = ({ children }) => {
  const { hasRole } = useAuth();
  if (!hasRole('ADMIN')) return <Navigate to={ROUTES.HOME} />;
  return children;
};

// Teacher/Admin Route Component
const TeacherRoute = ({ children }) => {
  const { hasRole } = useAuth();
  if (!hasRole('TEACHER') && !hasRole('ADMIN')) return <Navigate to={ROUTES.HOME} />;
  return children;
};

const AppRoutes = () => {
  return (
    <Routes>
      <Route path={ROUTES.LOGIN} element={<AuthLayout><Login /></AuthLayout>} />
      <Route path="/register" element={<AuthLayout><Register /></AuthLayout>} />
      <Route path={ROUTES.OAUTH2_REDIRECT} element={<OAuth2RedirectHandler />} />

      {/* Main App Routes */}
      <Route path={ROUTES.HOME} element={
        <ProtectedRoute>
          <MainLayout title="Dashboard">
             <Dashboard />
          </MainLayout>
        </ProtectedRoute>
      } />

      <Route path={ROUTES.PROFILE} element={
        <ProtectedRoute>
          <MainLayout title="Hồ sơ cá nhân">
             <Profile />
          </MainLayout>
        </ProtectedRoute>
      } />

      {/* Admin Routes */}
      <Route path={ROUTES.ADMIN_USERS} element={
        <ProtectedRoute>
          <AdminRoute>
            <MainLayout title="Quản lý người dùng">
               <UserManagement />
            </MainLayout>
          </AdminRoute>
        </ProtectedRoute>
      } />

      {/* Module 2: Course & Learning */}
      <Route path={ROUTES.COURSES} element={
        <ProtectedRoute>
          <MainLayout title="Khám phá khóa học">
             <CourseList />
          </MainLayout>
        </ProtectedRoute>
      } />

      <Route path={ROUTES.COURSE_DETAIL()} element={
        <ProtectedRoute>
          <MainLayout title="Chi tiết khóa học">
             <CourseDetail />
          </MainLayout>
        </ProtectedRoute>
      } />

      <Route path={ROUTES.LEARNING()} element={
        <ProtectedRoute>
           <LearningView />
        </ProtectedRoute>
      } />

      {/* Teacher Routes */}
      <Route path={ROUTES.TEACHER_COURSES} element={
        <ProtectedRoute>
          <TeacherRoute>
            <MainLayout title="Quản lý bài giảng">
               <TeacherDashboard />
            </MainLayout>
          </TeacherRoute>
        </ProtectedRoute>
      } />

      <Route path={ROUTES.TEACHER_COURSE_NEW} element={
        <ProtectedRoute>
          <TeacherRoute>
            <MainLayout title="Tạo khóa học">
               <CourseForm />
            </MainLayout>
          </TeacherRoute>
        </ProtectedRoute>
      } />

      <Route path={ROUTES.TEACHER_COURSE_EDIT()} element={
        <ProtectedRoute>
          <TeacherRoute>
            <MainLayout title="Chỉnh sửa khóa học">
               <CourseForm />
            </MainLayout>
          </TeacherRoute>
        </ProtectedRoute>
      } />

      <Route path={ROUTES.TEACHER_SYLLABUS()} element={
        <ProtectedRoute>
          <TeacherRoute>
            <MainLayout title="Quản lý giáo trình">
               <SyllabusManager />
            </MainLayout>
          </TeacherRoute>
        </ProtectedRoute>
      } />

      {/* Fallback */}
      <Route path="*" element={<Navigate to={ROUTES.HOME} />} />
    </Routes>
  );
};

export default AppRoutes;
