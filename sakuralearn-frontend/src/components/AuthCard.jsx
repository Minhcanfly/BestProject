import React from 'react';
import './AuthCard.css';

const AuthCard = ({ children, title, subtitle }) => {
  return (
    <div className="auth-card glass-effect">
      <div className="auth-header">
        <h1 className="auth-title">{title}</h1>
        {subtitle && <p className="auth-subtitle">{subtitle}</p>}
      </div>
      <div className="auth-content">
        {children}
      </div>
    </div>
  );
};

export default AuthCard;
