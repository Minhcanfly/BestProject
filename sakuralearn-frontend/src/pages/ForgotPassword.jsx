import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { authService } from '../services/authService';

const ForgotPassword = () => {
    const [email, setEmail] = useState('');
    const [message, setMessage] = useState('');
    const [error, setError] = useState('');
    const [loading, setLoading] = useState(false);

    const handleSubmit = async (e) => {
        e.preventDefault();
        setLoading(true);
        setError('');
        setMessage('');
        
        try {
            await authService.forgotPassword(email);
            setMessage('Yêu cầu đã được gửi! Vui lòng kiểm tra email của bạn để lấy link đặt lại mật khẩu.');
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
            minHeight: 'calc(100vh - 80px)', // Adjust for navbar if any
            padding: '20px'
        }}>
            <div className="glass-effect" style={{
                width: '100%',
                maxWeight: '400px',
                padding: '40px',
                borderRadius: '20px'
            }}>
                <h2 style={{ marginBottom: '10px' }}>Quên mật khẩu?</h2>
                <p style={{ color: 'var(--text-muted)', marginBottom: '30px' }}>
                    Nhập email của bạn và chúng tôi sẽ gửi hướng dẫn đặt lại mật khẩu.
                </p>

                {message && <div style={{ color: 'var(--success)', marginBottom: '20px', padding: '10px', background: 'rgba(29, 209, 161, 0.1)', borderRadius: '8px' }}>{message}</div>}
                {error && <div style={{ color: 'var(--error)', marginBottom: '20px', padding: '10px', background: 'rgba(255, 107, 107, 0.1)', borderRadius: '8px' }}>{error}</div>}

                <form onSubmit={handleSubmit}>
                    <div style={{ marginBottom: '20px' }}>
                        <label style={{ display: 'block', marginBottom: '8px' }}>Email</label>
                        <input
                            type="email"
                            required
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                            placeholder="example@gmail.com"
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
                        disabled={loading}
                        style={{
                            width: '100%',
                            padding: '14px',
                            background: 'var(--primary)',
                            color: 'white',
                            borderRadius: '10px',
                            fontWeight: '600',
                            marginTop: '10px',
                            opacity: loading ? 0.7 : 1
                        }}
                    >
                        {loading ? 'Đang gửi...' : 'Gửi yêu cầu'}
                    </button>
                    
                    <div style={{ marginTop: '20px', textAlign: 'center' }}>
                        <Link to="/login" style={{ color: 'var(--primary)', fontSize: '14px' }}> Quay lại đăng nhập</Link>
                    </div>
                </form>
            </div>
        </div>
    );
};

export default ForgotPassword;
