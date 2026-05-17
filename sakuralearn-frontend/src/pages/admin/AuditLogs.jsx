import React, { useCallback, useEffect, useMemo, useState } from 'react';
import {
  Activity,
  ChevronLeft,
  ChevronRight,
  Clock,
  Database,
  Eye,
  Filter,
  Monitor,
  RefreshCw,
  Search,
  ShieldCheck,
  User
} from 'lucide-react';
import { adminService } from '../../services/adminService';
import { getApiErrorMessage } from '../../utils/apiError';
import './AuditLogs.css';

const ACTIONS = ['', 'INSERT', 'UPDATE', 'DELETE'];

const AuditLogs = () => {
  const [logs, setLogs] = useState([]);
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(0);
  const [loading, setLoading] = useState(true);
  const [message, setMessage] = useState('');
  const [tableName, setTableName] = useState('');
  const [actionType, setActionType] = useState('');
  const [selectedLog, setSelectedLog] = useState(null);

  const fetchLogs = useCallback(async () => {
    setLoading(true);
    setMessage('');
    try {
      const response = await adminService.getAuditLogs({ page, size: 12, tableName, actionType });
      setLogs(response.data.content || []);
      setTotalPages(response.data.totalPages || 0);
    } catch (error) {
      setMessage(getApiErrorMessage(error, 'Không thể tải nhật ký hệ thống.'));
    } finally {
      setLoading(false);
    }
  }, [page, tableName, actionType]);

  useEffect(() => {
    fetchLogs();
  }, [fetchLogs]);

  const tableOptions = useMemo(() => {
    const names = logs.map((log) => log.tableName).filter(Boolean);
    return [...new Set(names)].sort();
  }, [logs]);

  const handleFilterSubmit = (event) => {
    event.preventDefault();
    if (page === 0) {
      fetchLogs();
      return;
    }
    setPage(0);
  };

  const formatDateTime = (value) => {
    if (!value) return 'Không rõ';
    return new Date(value).toLocaleString('vi-VN', {
      hour: '2-digit',
      minute: '2-digit',
      day: '2-digit',
      month: '2-digit',
      year: 'numeric'
    });
  };

  const formatJson = (value) => {
    if (!value) return 'Không có dữ liệu';
    return JSON.stringify(value, null, 2);
  };

  return (
    <div className="audit-page">
      <div className="audit-header">
        <div>
          <div className="audit-eyebrow">
            <ShieldCheck size={18} />
            Admin Audit
          </div>
          <h1>Nhật ký hệ thống</h1>
          <p>Theo dõi các thay đổi quan trọng để kiểm tra bảo mật, phân quyền và vận hành.</p>
        </div>

        <button className="audit-refresh-btn" onClick={fetchLogs} disabled={loading}>
          <RefreshCw size={18} />
          Làm mới
        </button>
      </div>

      <form className="audit-toolbar" onSubmit={handleFilterSubmit}>
        <div className="audit-input">
          <Search size={18} />
          <input
            list="audit-table-options"
            value={tableName}
            onChange={(event) => setTableName(event.target.value)}
            placeholder="Lọc theo bảng, ví dụ: users"
          />
          <datalist id="audit-table-options">
            {tableOptions.map((name) => (
              <option key={name} value={name} />
            ))}
          </datalist>
        </div>

        <div className="audit-select">
          <Filter size={18} />
          <select value={actionType} onChange={(event) => setActionType(event.target.value)}>
            {ACTIONS.map((action) => (
              <option key={action || 'all'} value={action}>
                {action || 'Tất cả thao tác'}
              </option>
            ))}
          </select>
        </div>

        <button type="submit" className="audit-filter-btn">Áp dụng</button>
      </form>

      {message && <div className="audit-message error">{message}</div>}

      <div className="audit-table-shell">
        <table className="audit-table">
          <thead>
            <tr>
              <th>Thời gian</th>
              <th>Thao tác</th>
              <th>Bảng</th>
              <th>Người thực hiện</th>
              <th>IP</th>
              <th className="text-right">Chi tiết</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr>
                <td colSpan="6" className="audit-loading-cell">
                  <div className="loader"></div>
                </td>
              </tr>
            ) : logs.length > 0 ? (
              logs.map((log) => (
                <tr key={log.id}>
                  <td>
                    <div className="audit-time">
                      <Clock size={15} />
                      <span>{formatDateTime(log.changedAt)}</span>
                    </div>
                  </td>
                  <td>
                    <span className={`audit-action action-${(log.actionType || '').toLowerCase()}`}>
                      {log.actionType}
                    </span>
                  </td>
                  <td>
                    <div className="audit-table-name">
                      <Database size={15} />
                      <span>{log.tableName}</span>
                    </div>
                  </td>
                  <td>
                    <div className="audit-user">
                      <User size={15} />
                      <span>{log.changedByName || log.changedByEmail || 'System'}</span>
                    </div>
                  </td>
                  <td>{log.ipAddress || 'N/A'}</td>
                  <td className="text-right">
                    <button className="audit-detail-btn" onClick={() => setSelectedLog(log)} title="Xem chi tiết">
                      <Eye size={17} />
                    </button>
                  </td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="6" className="audit-empty">
                  <Activity size={34} />
                  <span>Chưa có nhật ký phù hợp với bộ lọc hiện tại.</span>
                </td>
              </tr>
            )}
          </tbody>
        </table>

        <div className="audit-pagination">
          <span>Trang {page + 1} / {totalPages || 1}</span>
          <div className="audit-page-actions">
            <button disabled={page === 0} onClick={() => setPage((current) => current - 1)}>
              <ChevronLeft size={20} />
            </button>
            <button disabled={page >= totalPages - 1} onClick={() => setPage((current) => current + 1)}>
              <ChevronRight size={20} />
            </button>
          </div>
        </div>
      </div>

      {selectedLog && (
        <div className="audit-drawer-backdrop" onClick={() => setSelectedLog(null)}>
          <aside className="audit-drawer" onClick={(event) => event.stopPropagation()}>
            <div className="audit-drawer-header">
              <div>
                <span className={`audit-action action-${(selectedLog.actionType || '').toLowerCase()}`}>
                  {selectedLog.actionType}
                </span>
                <h2>{selectedLog.tableName}</h2>
              </div>
              <button onClick={() => setSelectedLog(null)}>×</button>
            </div>

            <div className="audit-detail-grid">
              <div>
                <span>Record ID</span>
                <strong>{selectedLog.recordId}</strong>
              </div>
              <div>
                <span>Thời gian</span>
                <strong>{formatDateTime(selectedLog.changedAt)}</strong>
              </div>
              <div>
                <span>Người thực hiện</span>
                <strong>{selectedLog.changedByName || selectedLog.changedByEmail || 'System'}</strong>
              </div>
              <div>
                <span>IP</span>
                <strong>{selectedLog.ipAddress || 'N/A'}</strong>
              </div>
            </div>

            <div className="audit-device">
              <Monitor size={16} />
              <span>{selectedLog.userAgent || 'Không có user agent'}</span>
            </div>

            <div className="audit-json-block">
              <h3>Dữ liệu trước</h3>
              <pre>{formatJson(selectedLog.oldValues)}</pre>
            </div>

            <div className="audit-json-block">
              <h3>Dữ liệu sau</h3>
              <pre>{formatJson(selectedLog.newValues)}</pre>
            </div>
          </aside>
        </div>
      )}
    </div>
  );
};

export default AuditLogs;
