import API from './api'

export const courseService = {
  // Public & Student
  getAllCourses: (params) => API.get('/courses', { params }),
  getCourseById: (id) => API.get(`/courses/${id}`),
  getLessonsByCourse: (courseId) => API.get(`/courses/${courseId}/lessons`),

  // Teacher & Admin
  createCourse: (formData) => API.post('/courses', formData, {
    headers: { 'Content-Type': 'multipart/form-data' }
  }),
  updateCourse: (id, formData) => API.put(`/courses/${id}`, formData, {
    headers: { 'Content-Type': 'multipart/form-data' }
  }),
  deleteCourse: (id) => API.delete(`/courses/${id}`),
  publishCourse: (id, publish) => API.patch(`/courses/${id}/publish?publish=${publish}`),
  generateSyllabus: (id, model = 'GPT_4O') => API.post(`/courses/${id}/generate-syllabus?model=${model}`),
}
