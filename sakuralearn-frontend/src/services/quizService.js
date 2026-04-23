import API from './api';

export const quizService = {
  createOrUpdateQuiz: (data) => API.post('/quizzes', data),
  getQuizByBlock: (blockId) => API.get(`/quizzes/block/${blockId}`),
  submitQuiz: (quizId, submission) => API.post(`/quizzes/${quizId}/submit`, submission)
};
