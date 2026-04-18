import React, { createContext, useState, useContext, useEffect } from 'react';
import { authService } from '../services/authService';

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Check if user is already logged in
    const storedUser = localStorage.getItem('user');
    const token = localStorage.getItem('token');
    if (storedUser && token) {
      setUser(JSON.parse(storedUser));
    }
    setLoading(false);
  }, []);

  const login = async (credentials) => {
    const response = await authService.login(credentials);
    const { token, refreshToken, ...userInfo } = response.data;
    
    // Normalize roles: remove 'ROLE_' prefix
    if (userInfo.roles) {
      userInfo.roles = userInfo.roles.map(role => role.replace('ROLE_', ''));
    }
    
    localStorage.setItem('token', token);
    localStorage.setItem('refreshToken', refreshToken);
    localStorage.setItem('user', JSON.stringify(userInfo));
    
    setUser(userInfo);
    return response.data;
  };

  const logout = () => {
    localStorage.removeItem('token');
    localStorage.removeItem('refreshToken');
    localStorage.removeItem('user');
    setUser(null);
  };

  const hasRole = (roleName) => {
    if (!user || !user.roles) return false;
    const cleanRole = roleName.replace('ROLE_', '');
    return user.roles.some(r => r === cleanRole || r === `ROLE_${cleanRole}`);
  };

  return (
    <AuthContext.Provider value={{ user, setUser, loading, login, logout, hasRole }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);
