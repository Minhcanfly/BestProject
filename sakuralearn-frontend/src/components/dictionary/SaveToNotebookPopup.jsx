import React, { useState, useEffect } from 'react';
import { Search, Plus, Trash2, CheckCircle, Folder } from 'lucide-react';
import './SaveToNotebookPopup.css';

const SaveToNotebookPopup = ({ isOpen, onClose, onSave, itemType, itemId }) => {
  const [folders, setFolders] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
  const [isCreating, setIsCreating] = useState(false);
  const [newFolderName, setNewFolderName] = useState('');
  const [loading, setLoading] = useState(false);

  // Mock fetching folders initially. We will integrate with API.
  useEffect(() => {
    if (isOpen) {
      fetchFolders();
    }
  }, [isOpen]);

  const fetchFolders = async () => {
    setLoading(true);
    try {
      const response = await fetch('http://localhost:8080/api/v1/notebook/folders', {
        headers: {
            'Authorization': `Bearer ${localStorage.getItem('token')}`
        }
      });
      if (response.ok) {
        const data = await response.json();
        setFolders(data);
      }
    } catch (error) {
      console.error("Failed to fetch folders", error);
    } finally {
      setLoading(false);
    }
  };

  const handleCreateFolder = async () => {
    if (!newFolderName.trim()) return;
    try {
      const response = await fetch('http://localhost:8080/api/v1/notebook/folders/create', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${localStorage.getItem('token')}`
        },
        body: JSON.stringify({ name: newFolderName, description: '' })
      });
      if (response.ok) {
        setNewFolderName('');
        setIsCreating(false);
        fetchFolders(); // Refresh list
      }
    } catch (error) {
      console.error("Failed to create folder", error);
    }
  };

  const handleSelectFolder = async (folderId) => {
    try {
      const response = await fetch('http://localhost:8080/api/v1/notebook/add', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${localStorage.getItem('token')}`
        },
        body: JSON.stringify({
          itemType: itemType,
          itemId: itemId,
          note: '',
          folderId: folderId
        })
      });
      if (response.ok) {
        onSave(); // Callback to notify parent (e.g. show toast)
        onClose();
      }
    } catch (error) {
       console.error("Failed to save to folder", error);
    }
  };

  if (!isOpen) return null;

  const filteredFolders = folders.filter(f => f.name.toLowerCase().includes(searchTerm.toLowerCase()));

  return (
    <div className="save-popup-overlay" onClick={onClose}>
      <div className="save-popup-content" onClick={e => e.stopPropagation()}>
        <div className="save-popup-header">
          <h3>Thêm từ vào sổ tay</h3>
          <button className="save-popup-close" onClick={onClose}>&times;</button>
        </div>

        <div className="save-popup-body">
          <div className="save-search-bar">
            <div className="search-input-wrapper">
              <Search size={18} className="search-icon" />
              <input 
                type="text" 
                placeholder="Tìm kiếm" 
                value={searchTerm}
                onChange={e => setSearchTerm(e.target.value)}
              />
            </div>
            <button className="add-folder-btn" onClick={() => setIsCreating(!isCreating)}>
              <Plus size={18} />
            </button>
            <button className="delete-folder-btn">
               <Trash2 size={18} />
            </button>
          </div>

          {isCreating && (
            <div className="create-folder-section">
              <input 
                type="text" 
                placeholder="Nhập tên sổ tay mới..." 
                value={newFolderName}
                onChange={e => setNewFolderName(e.target.value)}
                autoFocus
              />
              <button className="confirm-create-btn" onClick={handleCreateFolder}>
                <CheckCircle size={18} />
              </button>
            </div>
          )}

          <div className="folders-list">
            {loading ? (
                <div className="loading-state">Đang tải sổ tay...</div>
            ) : filteredFolders.length > 0 ? (
                filteredFolders.map(folder => (
                  <div key={folder.id} className="folder-item" onClick={() => handleSelectFolder(folder.id)}>
                    <div className="folder-icon-wrapper">
                        <Folder size={20} className="folder-icon" />
                    </div>
                    <div className="folder-info">
                        <span className="folder-name">{folder.name}</span>
                        <div className="folder-meta">
                           <span className="folder-count">{folder.itemCount} từ</span>
                           <span className="folder-date">
                               {new Date(folder.createdAt).toLocaleDateString('vi-VN')}
                           </span>
                        </div>
                    </div>
                  </div>
                ))
            ) : (
                <div className="empty-state">
                    Không tìm thấy sổ tay nào. Hãy tạo mới!
                </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
};

export default SaveToNotebookPopup;
