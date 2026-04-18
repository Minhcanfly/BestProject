import React from 'react';
import './AuthLayout.css';

const AuthLayout = ({ children }) => {
  return (
    <div className="auth-container">
      <div className="auth-background">
        <div className="blob blob-1"></div>
        <div className="blob blob-2"></div>
        <div className="blob blob-3"></div>
      </div>
      <main className="auth-main">
        {children}
      </main>
    </div>
  );
};

export default AuthLayout;
