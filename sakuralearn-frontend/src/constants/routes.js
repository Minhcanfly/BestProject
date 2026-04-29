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
  MY_COURSES: '/my-courses',
  FORGOT_PASSWORD: '/forgot-password',
  RESET_PASSWORD: '/reset-password',
  OAUTH2_REDIRECT: '/oauth2/redirect',
  // Module 4: Dictionary
  LIBRARY: '/library',
  DICTIONARY_LIST: (category = ':category', level = ':level') => `/dictionary/${category}/${level}`,
  
  // Module 5: SRS
  REVIEW: '/practice',
  NOTEBOOK: '/notebook',
};
