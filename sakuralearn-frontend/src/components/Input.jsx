import React from 'react';
import './Input.css';

const Input = ({ label, icon: Icon, type = 'text', value, onChange, placeholder, name, error, required = false }) => {
  return (
    <div className="input-group">
      {label && <label className="input-label">{label}</label>}
      <div className={`input-wrapper ${error ? 'input-error' : ''}`}>
        {Icon && <Icon className="input-icon" size={20} />}
        <input
          name={name}
          type={type}
          value={value}
          onChange={onChange}
          placeholder={placeholder}
          required={required}
          className="input-field"
        />
      </div>
      {error && <span className="error-message">{error}</span>}
    </div>
  );
};

export default Input;
