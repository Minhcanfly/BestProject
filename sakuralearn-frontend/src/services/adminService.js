import API from './api'

export const adminService = {
  // Get paginated users with optional search
  getAllUsers: (page = 0, size = 20, search = '') => {
    let url = `/admin/users?page=${page}&size=${size}`;
    if (search) url += `&search=${encodeURIComponent(search)}`;
    return API.get(url);
  },

  // Toggle user active status
  updateUserStatus: (userId, isActive) => 
    API.patch(`/admin/users/${userId}/status?isActive=${isActive}`),

  // Update user roles
  updateUserRoles: (userId, roles) => 
    API.patch(`/admin/users/${userId}/roles`, roles)
}
