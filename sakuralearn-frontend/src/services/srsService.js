import API from './api';

export const srsService = {
  getDueCards: (folderId = null, srsMode = true, page = 0, size = 20) => {
    let url = `/srs/due?page=${page}&size=${size}&srsMode=${srsMode}`;
    if (folderId) url += `&folderId=${folderId}`;
    return API.get(url);
  },

  submitReview: (flashcardId, quality) => {
    return API.post('/srs/review', { flashcardId, quality });
  }
};
