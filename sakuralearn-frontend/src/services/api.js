import axios from 'axios'

const API = axios.create({
  baseURL: import.meta.env.VITE_API_BASE_URL || 'http://localhost:8080/api/v1',
  headers: {
    'Content-Type': 'application/json',
  },
})

// Request interceptor - auto attach JWT token
API.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('token')
    if (token) {
      config.headers.Authorization = `Bearer ${token}`
    }
    return config
  },
  (error) => Promise.reject(error)
)

// Response interceptor - handle expired token
API.interceptors.response.use(
  (response) => response,
  async (error) => {
    const originalRequest = error.config;

    // Nếu lỗi 401 và chưa thử refresh lần nào
    if (error.response?.status === 401 && !originalRequest._retry) {
      originalRequest._retry = true;
      const refreshToken = localStorage.getItem('refreshToken');

      if (refreshToken) {
        try {
          // Gọi API để lấy access token mới
          const response = await axios.post(
            (import.meta.env.VITE_API_BASE_URL || 'http://localhost:8080/api/v1') + '/auth/refresh',
            { refreshToken }
          );

          const { accessToken } = response.data;
          localStorage.setItem('token', accessToken);

          // Cập nhật header và thực hiện lại request cũ
          originalRequest.headers.Authorization = `Bearer ${accessToken}`;
          return API(originalRequest);
        } catch (refreshError) {
          // Nếu refresh cũng lỗi (hết hạn 30 ngày) -> Logout
          localStorage.clear();
          window.location.href = '/login';
          return Promise.reject(refreshError);
        }
      }
    }

    // Nếu không phải lỗi 401 hoặc đã thử refresh mà vẫn lỗi
    if (error.response?.status === 401) {
      localStorage.clear();
      window.location.href = '/login';
    }

    return Promise.reject(error);
  }
);

export default API
