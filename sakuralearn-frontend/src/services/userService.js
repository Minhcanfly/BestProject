import API from './api'

export const userService = {
  getProfile: () => API.get('/users/me'),
  
  updateProfile: (userId, data) => {
    // The backend expects @RequestParam and @RequestPart, which means we must always use FormData
    const formData = new FormData();
    if (data.fullName) formData.append('fullName', data.fullName);
    if (data.preferredLanguage) formData.append('preferredLanguage', data.preferredLanguage);
    if (data.avatar instanceof File) {
      formData.append('avatar', data.avatar);
    }
    
    return API.put('/users/me', formData, {
      headers: {
        'Content-Type': 'multipart/form-data',
      },
    });
  }
}
