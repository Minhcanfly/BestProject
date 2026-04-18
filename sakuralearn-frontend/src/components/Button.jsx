import React from 'react';
import './Button.css';

const Button = ({ children, onClick, type = 'button', variant = 'primary', disabled = false, loading = false, fullWidth = false }) => {
  return (
    <button
      type={type}
      className={`btn btn-${variant} ${fullWidth ? 'btn-full' : ''} ${loading ? 'btn-loading' : ''}`}
      onClick={onClick}
      disabled={disabled || loading}
    >
      {loading ? (
        <span className="loader"></span>
      ) : children}
    </button>
  );
};

export default Button;
