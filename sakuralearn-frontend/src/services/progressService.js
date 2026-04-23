import API from './api'

export const progressService = {
  getCourseProgress: (courseId) => API.get(`/progress/course/${courseId}`),
  updateLastAccessed: (lessonId) => API.patch(`/progress/lessons/${lessonId}/access`),
  updateBlockProgress: (blockId, data) => API.patch(`/progress/blocks/${blockId}`, data),
  getLessonBlocksProgress: (lessonId) => API.get(`/progress/lessons/${lessonId}/blocks`),
  completeLesson: (lessonId) => API.post(`/progress/lessons/${lessonId}/complete`),
  getCompletedLessons: (courseId) => API.get(`/progress/course/${courseId}/completed-lessons`),
}
