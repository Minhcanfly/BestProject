import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Mail, Lock } from 'lucide-react';
import AuthCard from '../components/AuthCard';
import Input from '../components/Input';
import Button from '../components/Button';
import { useAuth } from '../contexts/AuthContext';

const Login = () => {
  const [formData, setFormData] = useState({
    email: '',
    password: '',
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const { login } = useAuth();
  const navigate = useNavigate();

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError('');
    
    try {
      await login(formData);
      navigate('/');
    } catch (err) {
      setError(err.response?.data?.message || 'Email hoặc mật khẩu không chính xác.');
    } finally {
      setLoading(false);
    }
  };

  const handleGoogleLogin = () => {
    window.location.href = 'http://localhost:8080/oauth2/authorization/google';
  };

  return (
    <AuthCard title="Chào mừng trở lại" subtitle="Đăng nhập để tiếp tục học tập.">
      <form onSubmit={handleSubmit}>
        <Input
          label="Email"
          name="email"
          type="email"
          icon={Mail}
          placeholder="example@mail.com"
          value={formData.email}
          onChange={handleChange}
          required
        />
        <Input
          label="Mật khẩu"
          name="password"
          type="password"
          icon={Lock}
          placeholder="••••••••"
          value={formData.password}
          onChange={handleChange}
          required
        />
        
        <div style={{ textAlign: 'right', marginBottom: '24px' }}>
          <Link to="/forgot-password" style={{ color: 'var(--text-muted)', fontSize: '0.9rem' }}>
            Quên mật khẩu?
          </Link>
        </div>
        
        {error && <p className="error-message" style={{ textAlign: 'center', marginBottom: '16px' }}>{error}</p>}
        
        <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
          <Button type="submit" variant="primary" fullWidth loading={loading}>
            Đăng nhập
          </Button>
          
          <div style={{ display: 'flex', alignItems: 'center', gap: '10px', margin: '10px 0' }}>
            <div style={{ flex: 1, height: '1px', background: 'var(--border)' }}></div>
            <span style={{ fontSize: '0.8rem', color: 'var(--text-muted)' }}>HOẶC</span>
            <div style={{ flex: 1, height: '1px', background: 'var(--border)' }}></div>
          </div>
          
          <Button type="button" variant="secondary" fullWidth onClick={handleGoogleLogin}>
            <img src="https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/google.svg" alt="Google" width="18" style={{ marginRight: '8px' }} />
            Tiếp tục với Google
          </Button>
        </div>
        
        <p style={{ marginTop: '24px', textAlign: 'center', fontSize: '0.9rem', color: 'var(--text-muted)' }}>
          Chưa có tài khoản? <Link to="/register" style={{ color: 'var(--primary)', fontWeight: 600 }}>Đăng ký miễn phí</Link>
        </p>
      </form>
    </AuthCard>
  );
};

export default Login;
