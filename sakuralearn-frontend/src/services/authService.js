import API from './api'

export const authService = {
  login: (data) => API.post('/auth/login', data),
  register: (data) => API.post('/auth/register', data),
  logout: () => API.post('/auth/logout'),
  forgotPassword: (email) => API.post(`/auth/forgot-password?email=${email}`),
  resetPassword: (token, newPassword) => API.post(`/auth/reset-password?token=${token}&newPassword=${newPassword}`),
  refreshToken: (refreshToken) => API.post('/auth/refresh', { refreshToken }),
}
