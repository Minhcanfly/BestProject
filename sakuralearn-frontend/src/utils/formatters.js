/**
 * Formats a number as Vietnamese Dong (VND)
 */
export const formatCurrency = (amount) => {
  if (amount === 0) return 'Miễn phí';
  return new Intl.NumberFormat('vi-VN', {
    style: 'currency',
    currency: 'VND',
  }).format(amount);
};

/**
 * Formats a date string to localized Vietnamese date
 */
export const formatDate = (dateString) => {
  if (!dateString) return 'N/A';
  return new Intl.DateTimeFormat('vi-VN', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  }).format(new Date(dateString));
};

/**
 * Formats minutes to a human-readable duration (e.g. 1h 30m)
 */
export const formatDuration = (minutes) => {
  if (!minutes) return '0 phút';
  const h = Math.floor(minutes / 60);
  const m = minutes % 60;
  return h > 0 ? `${h}h ${m}m` : `${m} phút`;
};
