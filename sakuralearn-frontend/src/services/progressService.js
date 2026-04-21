import API from './api'

export const progressService = {
  completeLesson: (lessonId) => API.patch(`/progress/lessons/${lessonId}/complete`),
  getCourseProgress: (courseId) => API.get(`/progress/course/${courseId}`),
  updateLastAccessed: (lessonId) => API.patch(`/progress/lessons/${lessonId}/access`),
}
