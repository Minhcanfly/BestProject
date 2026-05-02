import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { 
  ChevronLeft, 
  Search, 
  Plus, 
  MoreVertical, 
  Play, 
  MoreHorizontal,
  Edit3,
  Trash2,
  Bookmark
} from 'lucide-react';
import { notebookService } from '../../services/notebookService';
import PracticeModePopup from './PracticeModePopup';
import { ROUTES } from '../../constants/routes';
import './FolderDetail.css';

const FolderDetail = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const [folder, setFolder] = useState(null);
  const [items, setItems] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [sortBy, setSortBy] = useState('newest'); // 'newest', 'oldest', 'az'
  const [isPracticePopupOpen, setIsPracticePopupOpen] = useState(false);
  const [isAddModalOpen, setIsAddModalOpen] = useState(false);
  const [customForm, setCustomForm] = useState({ word: '', reading: '', meaning: '', note: '' });

  useEffect(() => {
    const fetchFolderData = async () => {
      setLoading(true);
      try {
        const [foldersRes, itemsRes] = await Promise.all([
          notebookService.getFolders(),
          notebookService.getFolderItems(id)
        ]);
        
        const currentFolder = foldersRes.data?.find(f => f.id === id);
        setFolder(currentFolder);
        setItems(itemsRes.data || []);
      } catch (error) {
        console.error("Failed to fetch folder details", error);
      } finally {
        setLoading(false);
      }
    };

    fetchFolderData();
  }, [id]);

  const handleDeleteItem = async (itemId) => {
    if (!window.confirm("Xóa từ này khỏi sổ tay?")) return;
    try {
        await notebookService.deleteNotebookItem(itemId);
        setItems(items.filter(item => item.id !== itemId));
    } catch (error) {
        console.error("Failed to delete item", error);
    }
  };

  const getSortedItems = () => {
    let result = [...items];
    if (searchTerm) {
        result = result.filter(item => 
            item.word?.toLowerCase().includes(searchTerm.toLowerCase()) || 
            item.meaning?.toLowerCase().includes(searchTerm.toLowerCase())
        );
    }
    
    switch (sortBy) {
        case 'oldest': return result.sort((a, b) => new Date(a.addedAt) - new Date(b.addedAt));
        case 'az': return result.sort((a, b) => (a.word || "").localeCompare(b.word || ""));
        case 'newest':
        default: return result.sort((a, b) => new Date(b.addedAt) - new Date(a.addedAt));
    }
  };

  const filteredItems = getSortedItems();

  const handleUpdateNote = async (item) => {
    const newNote = window.prompt("Nhập ghi chú mới:", item.note || "");
    if (newNote === null || newNote === item.note) return;

    try {
        await notebookService.updateItemNote(item.id, newNote);
        setItems(items.map(i => i.id === item.id ? { ...i, note: newNote } : i));
    } catch (error) {
        console.error("Failed to update note", error);
    }
  };

  const handleAddCustom = async (e) => {
    e.preventDefault();
    try {
        const response = await notebookService.addCustomItem({ ...customForm, folderId: id });
        if (response.data) {
            setIsAddModalOpen(false);
            setCustomForm({ word: '', reading: '', meaning: '', note: '' });
            // Re-fetch items
            const itemsRes = await notebookService.getFolderItems(id);
            setItems(itemsRes.data || []);
        }
    } catch (error) {
        console.error("Failed to add custom item", error);
    }
  };

  const handlePracticeSelect = (mode, srsEnabled) => {
    setIsPracticePopupOpen(false);
    navigate(`${ROUTES.REVIEW}?mode=${mode}&srs=${srsEnabled}&folderId=${id}`);
  };

  const handleDeleteFolder = async () => {
    if (!window.confirm("Bạn có chắc chắn muốn xóa sổ tay này và tất cả từ vựng bên trong không?")) return;
    try {
        await notebookService.deleteFolder(id);
        navigate('/notebook');
    } catch (error) {
        console.error("Failed to delete folder", error);
    }
  };

  const handleEditFolder = async () => {
    const newName = window.prompt("Nhập tên mới cho sổ tay:", folder.name);
    if (!newName || newName === folder.name) return;

    try {
        await notebookService.updateFolder(id, newName, folder.description || '');
        setFolder({ ...folder, name: newName });
    } catch (error) {
        console.error("Failed to edit folder", error);
    }
  };

  if (loading) return <div className="loading-container">Đang tải dữ liệu...</div>;

  return (
    <div className="folder-detail-page">
      <header className="folder-detail-header">
        <div className="header-left">
            <button className="back-btn" onClick={() => navigate('/notebook')}>
                <ChevronLeft size={24} /> Quay lại
            </button>
            <h1>{folder?.name || 'Chi tiết sổ tay'}</h1>
        </div>
        
        <div className="header-actions">
            <div className="search-bar-mini">
                <Search size={18} />
                <input 
                    type="text" 
                    placeholder="Tìm kiếm..." 
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                />
            </div>
            <button className="action-icon-btn" onClick={() => setIsAddModalOpen(true)} title="Tự thêm từ mới">
                <Plus size={20} />
            </button>
            <div className="folder-more-menu">
                <button className="action-icon-btn"><MoreVertical size={20} /></button>
                <div className="menu-dropdown">
                    <button onClick={handleEditFolder}><Edit3 size={16} /> Đổi tên</button>
                    <button onClick={handleDeleteFolder} className="delete-opt"><Trash2 size={16} /> Xóa sổ tay</button>
                </div>
            </div>
            <button className="practice-btn-primary" onClick={() => setIsPracticePopupOpen(true)}>
                <Play size={18} fill="currentColor" /> Ôn tập sổ tay
            </button>
        </div>
      </header>

      <main className="folder-detail-content">
        {/* Top Highlights (Featured Kanji) */}
        <section className="featured-section">
            <div className="featured-grid">
                {items.filter(i => i.itemType === 'KANJI').slice(0, 3).map(kanji => (
                    <div key={kanji.id} className="featured-kanji-card glass-effect">
                        <h2 className="japanese-text">{kanji.word}</h2>
                        <p className="reading">{kanji.reading}</p>
                        <p className="meaning">{kanji.meaning}</p>
                        <div className="card-badge">Kanji</div>
                    </div>
                ))}
            </div>
        </section>

        {/* Word List */}
        <section className="word-list-section">
            <div className="list-header">
                <h3>Danh sách từ ({filteredItems.length})</h3>
                <div className="list-view-options">
                    <select value={sortBy} onChange={(e) => setSortBy(e.target.value)} className="sort-select">
                        <option value="newest">Mới nhất</option>
                        <option value="oldest">Cũ nhất</option>
                        <option value="az">A-Z</option>
                    </select>
                </div>
            </div>

            <div className="word-items-grid">
                {filteredItems.map(item => (
                    <div key={item.id} className="word-item-card glass-effect">
                        <div className="word-item-main">
                            <div className="word-header">
                                <span className="word-ja japanese-text">{item.word}</span>
                                <span className="word-reading">{item.reading}</span>
                                <button className="item-menu-btn" onClick={() => handleDeleteItem(item.id)}>
                                    <Trash2 size={16} />
                                </button>
                            </div>
                            <p className="word-vi">{item.meaning}</p>
                        </div>
                        <div className="word-item-footer">
                            <div className="add-note" onClick={() => handleUpdateNote(item)}>
                                <Edit3 size={14} />
                                <span>{item.note || 'Thêm ghi chú của bạn ở đây'}</span>
                            </div>
                            <span className="item-date">{new Date(item.addedAt).toLocaleDateString('vi-VN')}</span>
                        </div>
                    </div>
                ))}
            </div>
        </section>
      </main>

      <PracticeModePopup 
        isOpen={isPracticePopupOpen} 
        onClose={() => setIsPracticePopupOpen(false)}
        onSelectMode={handlePracticeSelect}
      />

      {isAddModalOpen && (
        <div className="custom-add-modal-overlay" onClick={() => setIsAddModalOpen(false)}>
            <div className="custom-add-modal glass-effect" onClick={e => e.stopPropagation()}>
                <div className="modal-header">
                    <h3>Tạo từ vựng mới</h3>
                    <button className="browse-library-link" onClick={() => navigate(ROUTES.LIBRARY)}>
                        Hoặc tìm từ Thư viện &rarr;
                    </button>
                </div>
                <form onSubmit={handleAddCustom}>
                    <div className="form-group">
                        <label>Từ vựng / Ngữ pháp</label>
                        <input 
                            required
                            type="text" 
                            placeholder="Vd: 勉強, ~に違いない" 
                            value={customForm.word}
                            onChange={e => setCustomForm({...customForm, word: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label>Cách đọc (Reading)</label>
                        <input 
                            type="text" 
                            placeholder="Vd: べんきょう" 
                            value={customForm.reading}
                            onChange={e => setCustomForm({...customForm, reading: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label>Ý nghĩa</label>
                        <input 
                            required
                            type="text" 
                            placeholder="Nghĩa tiếng Việt" 
                            value={customForm.meaning}
                            onChange={e => setCustomForm({...customForm, meaning: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label>Ghi chú cá nhân</label>
                        <textarea 
                            placeholder="Mẹo nhớ, ví dụ..." 
                            value={customForm.note}
                            onChange={e => setCustomForm({...customForm, note: e.target.value})}
                        />
                    </div>
                    <div className="modal-actions">
                        <button type="button" className="cancel-btn" onClick={() => setIsAddModalOpen(false)}>Hủy</button>
                        <button type="submit" className="submit-btn">Lưu vào sổ tay</button>
                    </div>
                </form>
            </div>
        </div>
      )}
    </div>
  );
};

export default FolderDetail;
