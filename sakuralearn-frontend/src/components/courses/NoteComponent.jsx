import React, { useState, useEffect } from 'react';
import { noteService } from '../../services/noteService';
import { Edit2, Trash2, Plus, MessageSquare, Save, X } from 'lucide-react';
import { getApiErrorMessage } from '../../utils/apiError';

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
    <div className="personal-notes-container glass-effect">
      <div className="notes-header">
        <h4><MessageSquare size={18} /> Ghi chú của bạn</h4>
        {!isAdding && (
          <button className="add-note-btn-small" onClick={() => setIsAdding(true)}>
            <Plus size={16} /> Thêm ghi chú
          </button>
        )}
      </div>

      {error && <div className="note-error-msg">{error}</div>}

      {isAdding && (
        <div className="note-edit-area glass-effect-light">
          <textarea
            value={newNoteContent}
            onChange={(e) => setNewNoteContent(e.target.value)}
            placeholder="Nhập ghi chú cá nhân (ví dụ: cách nhớ từ này, ví dụ khác...)"
            rows={3}
            autoFocus
          ></textarea>
          <div className="note-edit-actions">
            <button className="btn-save-note" onClick={handleAddNote} disabled={loading}>
              {loading ? 'Đang lưu...' : <><Save size={16} /> Lưu</>}
            </button>
            <button className="btn-cancel-note" onClick={() => setIsAdding(false)}>
              <X size={16} /> Hủy
            </button>
          </div>
        </div>
      )}

      <div className="notes-list">
        {notes.length > 0 ? (
          notes.map((note) => (
            <div key={note.id} className="note-item glass-effect-light">
              {editingNoteId === note.id ? (
                <div className="note-edit-area">
                  <textarea
                    value={editContent}
                    onChange={(e) => setEditContent(e.target.value)}
                    rows={3}
                    autoFocus
                  ></textarea>
                  <div className="note-edit-actions">
                    <button className="btn-save-note" onClick={() => handleUpdateNote(note.id)} disabled={loading}>
                      Lưu
                    </button>
                    <button className="btn-cancel-note" onClick={() => setEditingNoteId(null)}>
                      Hủy
                    </button>
                  </div>
                </div>
              ) : (
                <>
                  <div className="note-content">{note.content}</div>
                  <div className="note-meta">
                    <span>{new Date(note.updatedAt).toLocaleDateString()}</span>
                    <div className="note-actions">
                      <button onClick={() => { setEditingNoteId(note.id); setEditContent(note.content); }}>
                        <Edit2 size={14} />
                      </button>
                      <button onClick={() => handleDeleteNote(note.id)}>
                        <Trash2 size={14} />
                      </button>
                    </div>
                  </div>
                </>
              )}
            </div>
          ))
        ) : !isAdding && (
          <div className="no-notes-msg">Chưa có ghi chú nào cho phần này.</div>
        )}
      </div>
    </div>
  );
};

export default NoteComponent;
