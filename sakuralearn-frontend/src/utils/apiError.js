export const getApiErrorMessage = (error, fallbackMessage = 'Có lỗi xảy ra. Vui lòng thử lại.') => {
  if (!error) return fallbackMessage;

  const responseData = error.response?.data;
  if (typeof responseData?.message === 'string' && responseData.message.trim()) {
    return responseData.message;
  }

  if (typeof error.message === 'string' && error.message.trim()) {
    return error.message;
  }

  return fallbackMessage;
};
