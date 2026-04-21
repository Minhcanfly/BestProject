import React from 'react';

const StatusMessage = ({ type = 'error', message }) => {
  if (!message) return null;

  const className = type === 'error' ? 'form-error-view glass-effect' : 'glass-effect';
  return (
    <div className={className}>
      <p>{message}</p>
    </div>
  );
};

export default StatusMessage;
