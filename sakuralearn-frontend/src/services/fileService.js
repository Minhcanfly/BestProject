import API from './api';

export const fileService = {
  uploadFile: (file, folder = 'courses') => {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('folder', folder);
    
    return API.post('/files/upload', formData, {
      headers: {
        'Content-Type': 'multipart/form-data'
      }
    });
  }
};
