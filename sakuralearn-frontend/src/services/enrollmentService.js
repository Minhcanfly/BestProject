import API from './api'

export const enrollmentService = {
  enrollInCourse: (courseId) => API.post(`/enrollments/course/${courseId}`),
  getMyEnrollments: () => API.get('/enrollments/my'),
  checkEnrollment: (courseId) => API.get(`/enrollments/check/${courseId}`),
}
