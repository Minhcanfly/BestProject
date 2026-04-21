export const ROUTES = {
  HOME: '/',
  LOGIN: '/login',
  COURSES: '/courses',
  COURSE_DETAIL: (courseId = ':id') => `/courses/${courseId}`,
  LEARNING: (courseId = ':courseId') => `/learning/${courseId}`,
  TEACHER_COURSES: '/teacher/courses',
  TEACHER_COURSE_NEW: '/teacher/courses/new',
  TEACHER_COURSE_EDIT: (courseId = ':id') => `/teacher/courses/edit/${courseId}`,
  TEACHER_SYLLABUS: (courseId = ':id') => `/teacher/courses/syllabus/${courseId}`,
  ADMIN_USERS: '/admin/users',
  PROFILE: '/profile',
  OAUTH2_REDIRECT: '/oauth2/redirect',
};
