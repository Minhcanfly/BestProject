import React, { useState, useEffect } from 'react';
import { useLocation, useNavigate, Link } from 'react-router-dom';
import { authService } from '../services/authService';

const ResetPassword = () => {
    const [newPassword, setNewPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const [message, setMessage] = useState('');
    const [error, setError] = useState('');
    const [loading, setLoading] = useState(false);
    
    const location = useLocation();
    const navigate = useNavigate();
    const [token, setToken] = useState('');

    useEffect(() => {
        const params = new URLSearchParams(location.search);
        const tokenParam = params.get('token');
        if (tokenParam) {
            setToken(tokenParam);
        } else {
            setError('Mã xác thực không tìm thấy hoặc không hợp lệ.');
        }
    }, [location]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        if (newPassword !== confirmPassword) {
            setError('Mật khẩu nhập lại không khớp.');
            return;
        }

        setLoading(true);
        setError('');
        
        try {
            await authService.resetPassword(token, newPassword);
            setMessage('Mật khẩu của bạn đã được thay đổi thành công! Đang chuyển hướng về trang đăng nhập...');
            setTimeout(() => {
                navigate('/login');
            }, 3000);
        } catch (err) {
            setError(err.response?.data?.message || 'Có lỗi xảy ra. Vui lòng thử lại.');
        } finally {
            setLoading(false);
        }
    };

    return (
        <div style={{
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            minHeight: 'calc(100vh - 80px)',
            padding: '20px'
        }}>
            <div className="glass-effect" style={{
                width: '100%',
                maxWidth: '400px',
                padding: '40px',
                borderRadius: '20px'
            }}>
                <h2 style={{ marginBottom: '10px' }}>Đặt lại mật khẩu</h2>
                <p style={{ color: 'var(--text-muted)', marginBottom: '30px' }}>
                    Vui lòng nhập mật khẩu mới cho tài khoản của bạn.
                </p>

                {message && <div style={{ color: 'var(--success)', marginBottom: '20px', padding: '10px', background: 'rgba(29, 209, 161, 0.1)', borderRadius: '8px' }}>{message}</div>}
                {error && <div style={{ color: 'var(--error)', marginBottom: '20px', padding: '10px', background: 'rgba(255, 107, 107, 0.1)', borderRadius: '8px' }}>{error}</div>}

                <form onSubmit={handleSubmit}>
                    <div style={{ marginBottom: '20px' }}>
                        <label style={{ display: 'block', marginBottom: '8px' }}>Mật khẩu mới</label>
                        <input
                            type="password"
                            required
                            minLength="6"
                            value={newPassword}
                            onChange={(e) => setNewPassword(e.target.value)}
                            style={{
                                width: '100%',
                                padding: '12px',
                                background: 'rgba(255, 255, 255, 0.05)',
                                border: '1px solid var(--border)',
                                borderRadius: '10px',
                                color: 'white'
                            }}
                        />
                    </div>

                    <div style={{ marginBottom: '30px' }}>
                        <label style={{ display: 'block', marginBottom: '8px' }}>Xác nhận mật khẩu</label>
                        <input
                            type="password"
                            required
                            value={confirmPassword}
                            onChange={(e) => setConfirmPassword(e.target.value)}
                            style={{
                                width: '100%',
                                padding: '12px',
                                background: 'rgba(255, 255, 255, 0.05)',
                                border: '1px solid var(--border)',
                                borderRadius: '10px',
                                color: 'white'
                            }}
                        />
                    </div>

                    <button
                        type="submit"
                        disabled={loading || !token}
                        style={{
                            width: '100%',
                            padding: '14px',
                            background: 'var(--primary)',
                            color: 'white',
                            borderRadius: '10px',
                            fontWeight: '600',
                            marginTop: '10px',
                            opacity: (loading || !token) ? 0.7 : 1
                        }}
                    >
                        {loading ? 'Đang cập nhật...' : 'Cập nhật mật khẩu'}
                    </button>
                    
                    <div style={{ marginTop: '20px', textAlign: 'center' }}>
                        <Link to="/login" style={{ color: 'var(--primary)', fontSize: '14px' }}>Quay lại đăng nhập</Link>
                    </div>
                </form>
            </div>
        </div>
    );
};

export default ResetPassword;
