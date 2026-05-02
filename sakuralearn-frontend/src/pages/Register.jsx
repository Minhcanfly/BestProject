import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { User, Mail, Lock } from 'lucide-react';
import AuthCard from '../components/AuthCard';
import Input from '../components/Input';
import Button from '../components/Button';
import { authService } from '../services/authService';

const Register = () => {
  const [formData, setFormData] = useState({
    fullName: '',
    username: '',
    email: '',
    password: '',
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);
  const navigate = useNavigate();

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError('');
    
    try {
      await authService.register(formData);
      setSuccess(true);
    } catch (err) {
      setError(err.response?.data?.message || 'Đăng ký thất bại. Vui lòng thử lại.');
    } finally {
      setLoading(false);
    }
  };

  if (success) {
    return (
      <AuthCard title="Kiểm tra Email" subtitle="Chúng tôi đã gửi link xác thực đến email của bạn.">
        <div style={{ textAlign: 'center' }}>
          <p style={{ marginBottom: '24px', color: 'var(--text-muted)' }}>
            Vui lòng kiểm tra hộp thư (và thư rác) để kích hoạt tài khoản.
          </p>
          <Button variant="primary" fullWidth onClick={() => navigate('/login')}>
            Quay về Đăng nhập
          </Button>
        </div>
      </AuthCard>
    );
  }

  return (
    <AuthCard title="Đăng ký" subtitle="Bắt đầu hành trình chinh phục tiếng Nhật ngay hôm nay.">
      <form onSubmit={handleSubmit}>
        <Input
          label="Họ và tên"
          name="fullName"
          icon={User}
          placeholder="Nguyễn Văn A"
          value={formData.fullName}
          onChange={handleChange}
          required
        />
        <Input
          label="Tên đăng nhập"
          name="username"
          icon={User}
          placeholder="username123"
          value={formData.username}
          onChange={handleChange}
          required
          pattern="^[a-zA-Z0-9._-]+$"
          title="Chỉ chứa chữ cái, số và . _ -"
        />
        <p style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '-12px', marginBottom: '16px' }}>
          Chỉ chứa chữ cái, số và các ký tự . _ -
        </p>
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
          minLength="8"
        />
        <p style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '-12px', marginBottom: '16px' }}>
          Tối thiểu 8 ký tự, bao gồm chữ hoa, chữ thường, số và ký tự đặc biệt (@#$%^&+=!)
        </p>
        
        {error && <p className="error-message" style={{ textAlign: 'center', marginBottom: '16px' }}>{error}</p>}
        
        <Button type="submit" variant="primary" fullWidth loading={loading}>
          Tạo tài khoản
        </Button>
        
        <p style={{ marginTop: '24px', textAlign: 'center', fontSize: '0.9rem', color: 'var(--text-muted)' }}>
          Đã có tài khoản? <Link to="/login" style={{ color: 'var(--primary)', fontWeight: 600 }}>Đăng nhập ngay</Link>
        </p>
      </form>
    </AuthCard>
  );
};

export default Register;
