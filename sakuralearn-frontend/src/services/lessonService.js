import API from './api'

export const lessonService = {
  getLessonsByCourse: (courseId) => API.get(`/courses/${courseId}/lessons`),
  getBlocksByLesson: (lessonId) => API.get(`/lessons/${lessonId}/blocks`),
  createLesson: (courseId, formData) => API.post(`/courses/${courseId}/lessons`, formData, {
    headers: { 'Content-Type': 'multipart/form-data' }
  }),
  // Keep nested resource path to match backend contract.
  updateLesson: (courseId, id, formData) => API.put(`/courses/${courseId}/lessons/${id}`, formData, {
    headers: { 'Content-Type': 'multipart/form-data' }
  }),
  deleteLesson: (courseId, id) => API.delete(`/courses/${courseId}/lessons/${id}`),
  reorderLessons: (courseId, lessonIds) => API.post(`/courses/${courseId}/lessons/reorder`, lessonIds),
}

export const lessonBlockService = {
  getBlocksByLesson: (lessonId) => API.get(`/lessons/${lessonId}/blocks`),
  createBlock: (lessonId, data) => API.post(`/lessons/${lessonId}/blocks`, data),
  updateBlock: (lessonId, id, data) => API.put(`/lessons/${lessonId}/blocks/${id}`, data),
  deleteBlock: (lessonId, id) => API.delete(`/lessons/${lessonId}/blocks/${id}`),
  reorderBlocks: (lessonId, blockIds) => API.post(`/lessons/${lessonId}/blocks/reorder`, blockIds),
}
