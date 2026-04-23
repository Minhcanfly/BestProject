import API from './api'

export const noteService = {
  createNote: (data) => API.post('/notes', data),
  updateNote: (noteId, content) => API.put(`/notes/${noteId}`, content, { headers: { 'Content-Type': 'text/plain' } }),
  deleteNote: (noteId) => API.delete(`/notes/${noteId}`),
  getNotesByBlock: (blockId) => API.get(`/notes/block/${blockId}`),
  getNotesByLesson: (lessonId) => API.get(`/notes/lesson/${lessonId}`),
}
