import React, { useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import { useAuth } from '../contexts/AuthContext';

const OAuth2RedirectHandler = () => {
    const navigate = useNavigate();
    const location = useLocation();
    const { loginWithOAuth2 } = useAuth();

    useEffect(() => {
        const params = new URLSearchParams(location.search);
        const token = params.get('token');
        const refreshToken = params.get('refreshToken');
        const id = params.get('id');
        const email = params.get('email');
        const username = params.get('username');
        const fullName = params.get('fullName');
        const avatarUrl = params.get('avatarUrl');
        const roles = params.get('roles');

        if (token && refreshToken) {
            // Save to AuthContext/LocalStorage
            const userData = {
                id,
                email,
                username,
                fullName,
                avatarUrl,
                roles: roles ? roles.split(',').map(r => r.replace('ROLE_', '')) : ['STUDENT']
            };
            
            localStorage.setItem('token', token);
            localStorage.setItem('refreshToken', refreshToken);
            localStorage.setItem('user', JSON.stringify(userData));
            
            // Trigger context update if method exists (we'll update AuthContext next)
            window.location.href = '/'; 
        } else {
            navigate('/login?error=oauth2_failed');
        }
    }, [location, navigate]);

    return (
        <div style={{ 
            display: 'flex', 
            justifyContent: 'center', 
            alignItems: 'center', 
            height: '100vh',
            color: 'white',
            background: '#0a0a0a'
        }}>
            <div className="loader">
                <h2>Đang xử lý đăng nhập...</h2>
                <p>Vui lòng đợi trong giây lát.</p>
            </div>
        </div>
    );
};

export default OAuth2RedirectHandler;
