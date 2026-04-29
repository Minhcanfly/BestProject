import API from './api';

export const notebookService = {
  addToNotebook: (itemType, itemId, note = "") => {
    return API.post('/notebook/add', { itemType, itemId, note });
  },

  addToSRS: (itemType, itemId) => {
    return API.post('/notebook/srs/add', { itemType, itemId });
  }
};
