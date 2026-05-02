import API from './api';

export const notebookService = {
  addToNotebook: (itemType, itemId, note = "") => {
    return API.post('/notebook/add', { itemType, itemId, note });
  },

  addToSRS: (itemType, itemId) => {
    return API.post('/notebook/srs/add', { itemType, itemId });
  },

  getFolders: () => API.get('/notebook/folders'),
  
  createFolder: (name, description = "") => API.post('/notebook/folders/create', { name, description }),
  
  getFolderItems: (folderId) => API.get(`/notebook/folders/${folderId}/items`),
  
  updateFolder: (folderId, name, description) => API.put(`/notebook/folders/${folderId}`, { name, description }),
  
  deleteFolder: (folderId) => API.delete(`/notebook/folders/${folderId}`),
  
  deleteNotebookItem: (itemId) => API.delete(`/notebook/items/${itemId}`),
  
  updateItemNote: (itemId, note) => API.put(`/notebook/items/${itemId}/note`, { note }),
  
  addCustomItem: (data) => API.post('/notebook/custom/add', data),
  
  getSrsStats: () => API.get('/notebook/srs-stats')
};
