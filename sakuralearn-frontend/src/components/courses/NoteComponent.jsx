import React, { useState, useEffect } from 'react';
import { noteService } from '../../services/noteService';
import { Edit2, Trash2, Plus, MessageSquare, Save, X, Book } from 'lucide-react';
import { getApiErrorMessage } from '../../utils/apiError';
import './NoteComponent.css';

const NoteComponent = ({ blockId }) => {
  const [notes, setNotes] = useState([]);
  const [isAdding, setIsAdding] = useState(false);
  const [newNoteContent, setNewNoteContent] = useState('');
  const [editingNoteId, setEditingNoteId] = useState(null);
  const [editContent, setEditContent] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchNotes();
  }, [blockId]);

  const fetchNotes = async () => {
    try {
      const response = await noteService.getNotesByBlock(blockId);
      setNotes(response.data || []);
    } catch (err) {
      console.error('Error fetching notes:', err);
    }
  };

  const handleAddNote = async () => {
    if (!newNoteContent.trim()) return;
    setLoading(true);
    setError(null);
    try {
      await noteService.createNote({ lessonBlockId: blockId, content: newNoteContent });
      setNewNoteContent('');
      setIsAdding(false);
      fetchNotes();
    } catch (err) {
      setError(getApiErrorMessage(err, 'Không thể lưu ghi chú'));
    } finally {
      setLoading(false);
    }
  };

  const handleUpdateNote = async (noteId) => {
    if (!editContent.trim()) return;
    setLoading(true);
    try {
      await noteService.updateNote(noteId, editContent);
      setEditingNoteId(null);
      fetchNotes();
    } catch (err) {
      setError(getApiErrorMessage(err, 'Không thể cập nhật ghi chú'));
    } finally {
      setLoading(false);
    }
  };

  const handleDeleteNote = async (noteId) => {
    if (!window.confirm('Bạn có chắc chắn muốn xóa ghi chú này?')) return;
    try {
      await noteService.deleteNote(noteId);
      fetchNotes();
    } catch (err) {
      setError(getApiErrorMessage(err, 'Không thể xóa ghi chú'));
    }
  };

  return (
    <div className="personal-notes-container">
      <div className="notes-header">
        <h4><Book size={20} /> Sổ tay bài học</h4>
        {!isAdding && (
          <button className="add-note-btn-premium" onClick={() => setIsAdding(true)}>
            <Plus size={16} /> Thêm ghi chú
          </button>
        )}
      </div>

      {error && <div className="note-error-msg">{error}</div>}

      {isAdding && (
        <div className="note-edit-area-premium">
          <textarea
            value={newNoteContent}
            onChange={(e) => setNewNoteContent(e.target.value)}
            placeholder="Viết ghi chú của bạn vào đây... (phím tắt để nhớ, ví dụ...)"
            autoFocus
          ></textarea>
          <div className="note-edit-actions">
            <button className="btn-premium-cancel" onClick={() => setIsAdding(false)}>
              Hủy bỏ
            </button>
            <button className="btn-premium-save" onClick={handleAddNote} disabled={loading}>
              {loading ? 'Đang lưu...' : <><Save size={16} /> Lưu ghi chú</>}
            </button>
          </div>
        </div>
      )}

      <div className="notes-list-premium">
        {notes.length > 0 ? (
          notes.map((note) => (
            <div key={note.id} className="note-item-premium">
              {editingNoteId === note.id ? (
                <div className="note-edit-area-premium">
                  <textarea
                    value={editContent}
                    onChange={(e) => setEditContent(e.target.value)}
                    autoFocus
                  ></textarea>
                  <div className="note-edit-actions">
                    <button className="btn-premium-cancel" onClick={() => setEditingNoteId(null)}>
                      Hủy
                    </button>
                    <button className="btn-premium-save" onClick={() => handleUpdateNote(note.id)} disabled={loading}>
                      Cập nhật
                    </button>
                  </div>
                </div>
              ) : (
                <>
                  <div className="note-content-premium">{note.content}</div>
                  <div className="note-footer-premium">
                    <div className="note-date-badge">
                      Cập nhật: {new Date(note.updatedAt).toLocaleDateString('vi-VN')}
                    </div>
                    <div className="note-actions-premium">
                      <button 
                        className="action-btn-circle"
                        onClick={() => { setEditingNoteId(note.id); setEditContent(note.content); }}
                        title="Chỉnh sửa"
                      >
                        <Edit2 size={14} />
                      </button>
                      <button 
                        className="action-btn-circle delete"
                        onClick={() => handleDeleteNote(note.id)}
                        title="Xóa"
                      >
                        <Trash2 size={14} />
                      </button>
                    </div>
                  </div>
                </>
              )}
            </div>
          ))
        ) : !isAdding && (
          <div className="no-notes-placeholder">
            <MessageSquare size={40} />
            <p>Phần này chưa có ghi chú nào. Hãy bắt đầu viết ghi chú để ghi nhớ kiến thức tốt hơn!</p>
          </div>
        )}
      </div>
    </div>
  );
};

export default NoteComponent;
