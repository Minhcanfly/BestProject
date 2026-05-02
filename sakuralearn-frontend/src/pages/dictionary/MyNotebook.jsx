import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { 
  ChevronLeft, 
  Trash2, 
  BookOpen, 
  Play,
  Settings,
  Folder
} from 'lucide-react';
import { notebookService } from '../../services/notebookService';
import PracticeModePopup from './PracticeModePopup';
import { ROUTES } from '../../constants/routes';
import './MyNotebook.css';

const MyNotebook = () => {
  const navigate = useNavigate();
  const [folders, setFolders] = useState([]);
  const [loading, setLoading] = useState(true);
  const [srsStats, setSrsStats] = useState({
      level1: 0, level2: 0, level3: 0, level4: 0, level5: 0,
      todayReviewedCount: 0, dailyLimit: 80, remainingToday: 0
  });
  const [isCreatingFolder, setIsCreatingFolder] = useState(false);
  const [newFolderName, setNewFolderName] = useState('');
  const [isPracticePopupOpen, setIsPracticePopupOpen] = useState(false);
  const [searchTerm, setSearchTerm] = useState('');
  
  useEffect(() => {
    fetchData();
  }, []);
 
  const fetchData = async () => {
    setLoading(true);
    try {
        const [folderRes, statsRes] = await Promise.all([
            notebookService.getFolders(),
            notebookService.getSrsStats()
        ]);
        setFolders(folderRes.data || []);
        setSrsStats(statsRes.data || srsStats);
    } catch (error) {
        console.error("Failed to fetch notebook data", error);
    } finally {
        setLoading(false);
    }
  };

  const handleCreateFolder = async () => {
    if (!newFolderName.trim()) return;
    try {
        await notebookService.createFolder(newFolderName);
        setNewFolderName('');
        setIsCreatingFolder(false);
        fetchData();
    } catch (error) {
        console.error("Failed to create folder", error);
    }
  };

  const handleDeleteFolder = async (e, folderId) => {
    e.stopPropagation();
    if (!window.confirm("Bạn có chắc chắn muốn xóa sổ tay này và tất cả từ vựng bên trong không?")) return;
    
    try {
        await notebookService.deleteFolder(folderId);
        fetchData();
    } catch (error) {
        console.error("Failed to delete folder", error);
    }
  };

  const handleEditFolder = async (e, folder) => {
    e.stopPropagation();
    const newName = window.prompt("Nhập tên mới cho sổ tay:", folder.name);
    if (!newName || newName === folder.name) return;

    try {
        await notebookService.updateFolder(folder.id, newName, folder.description || '');
        fetchData();
    } catch (error) {
        console.error("Failed to edit folder", error);
    }
  };

  const handlePracticeSelect = (mode, srsEnabled) => {
    setIsPracticePopupOpen(false);
    navigate(`${ROUTES.REVIEW}?mode=${mode}&srs=${srsEnabled}`);
  };

  return (
    <div className="notebook-page">
      <header className="notebook-header">
        <button className="back-btn" onClick={() => navigate(-1)}>
          <ChevronLeft size={24} /> Quay lại
        </button>
        <div className="title-section">
          <h1>Sổ tay học tập</h1>
          <p>Quản lý từ vựng và luyện tập với hệ thống SRS (Học lặp lại ngắt quãng)</p>
        </div>
      </header>

      <main className="notebook-content">
        {/* SRS Dashboard Area */}
        <section className="srs-dashboard">
            <div className="srs-dashboard-header">
                <h3>Tổng quan thẻ nhớ (Flashcards)</h3>
                <div className="srs-actions">
                    <button 
                        className="srs-review-btn primary-btn"
                        onClick={() => setIsPracticePopupOpen(true)}
                    >
                        <Play size={18} /> Bắt đầu ôn tập
                    </button>
                </div>
            </div>

            <div className="srs-stats-grid">
                <div className="stat-card level-1">
                    <div className="stat-indicator"></div>
                    <div className="stat-info">
                        <span className="stat-label">Mới học</span>
                        <span className="stat-value">{srsStats.level1} từ</span>
                    </div>
                </div>
                <div className="stat-card level-2">
                    <div className="stat-indicator"></div>
                    <div className="stat-info">
                        <span className="stat-label">Sơ cấp</span>
                        <span className="stat-value">{srsStats.level2} từ</span>
                    </div>
                </div>
                <div className="stat-card level-3">
                    <div className="stat-indicator"></div>
                    <div className="stat-info">
                        <span className="stat-label">Trung cấp</span>
                        <span className="stat-value">{srsStats.level3} từ</span>
                    </div>
                </div>
                <div className="stat-card level-4">
                    <div className="stat-indicator"></div>
                    <div className="stat-info">
                        <span className="stat-label">Khá</span>
                        <span className="stat-value">{srsStats.level4} từ</span>
                    </div>
                </div>
                <div className="stat-card level-5">
                    <div className="stat-indicator"></div>
                    <div className="stat-info">
                        <span className="stat-label">Nhuần nhuyễn</span>
                        <span className="stat-value">{srsStats.level5} từ</span>
                    </div>
                </div>
                <div className="stat-card srs-limit-card">
                    <div className="stat-info">
                        <span className="stat-label">Tiến độ hôm nay</span>
                        <span className="stat-value">{srsStats.todayReviewedCount} / {srsStats.dailyLimit}</span>
                        <div className="limit-progress-bar">
                            <div className="limit-progress-fill" style={{ width: `${Math.min(100, (srsStats.todayReviewedCount / srsStats.dailyLimit) * 100)}%` }}></div>
                        </div>
                        <span className="remaining-text">{srsStats.remainingToday > 0 ? `Còn ${srsStats.remainingToday} thẻ` : 'Đã hoàn thành!'}</span>
                    </div>
                </div>
            </div>
        </section>

        {/* Folders List Area */}
        <section className="folders-section">
            <div className="section-header">
                <h3>Danh sách sổ tay</h3>
                <div className="folder-actions-wrapper">
                    {isCreatingFolder ? (
                        <div className="create-folder-inline">
                            <input 
                                type="text" 
                                placeholder="Tên sổ tay mới..." 
                                value={newFolderName}
                                onChange={(e) => setNewFolderName(e.target.value)}
                                autoFocus
                                onKeyDown={(e) => e.key === 'Enter' && handleCreateFolder()}
                            />
                            <button className="confirm-btn" onClick={handleCreateFolder}>Tạo</button>
                            <button className="cancel-btn" onClick={() => setIsCreatingFolder(false)}>Hủy</button>
                        </div>
                    ) : (
                        <div className="folder-search-bar">
                            <input 
                                type="text" 
                                placeholder="Tìm kiếm sổ tay..." 
                                value={searchTerm || ''}
                                onChange={(e) => setSearchTerm(e.target.value)}
                            />
                            <button className="add-btn" onClick={() => setIsCreatingFolder(true)}>+</button>
                        </div>
                    )}
                </div>
            </div>

            <div className="folders-grid">
                {loading ? (
                    <p className="loading-text">Đang tải...</p>
                ) : folders.filter(f => f.name.toLowerCase().includes(searchTerm.toLowerCase())).length > 0 ? (
                    folders.filter(f => f.name.toLowerCase().includes(searchTerm.toLowerCase())).map(folder => (
                        <div key={folder.id} className="notebook-folder-card" onClick={() => navigate(`/notebook/folder/${folder.id}`)}>
                            <div className="folder-icon-box">
                                <Folder size={28} />
                            </div>
                            <div className="folder-details">
                                <h4>{folder.name}</h4>
                                <div className="folder-meta">
                                    <span>{folder.itemCount} mục</span>
                                    <span>•</span>
                                    <span>{new Date(folder.createdAt).toLocaleDateString('vi-VN')}</span>
                                </div>
                            </div>
                            <div className="folder-card-actions">
                                <button className="icon-btn" onClick={(e) => handleEditFolder(e, folder)} title="Sửa">
                                    <Settings size={18} />
                                </button>
                                <button className="icon-btn delete-btn" onClick={(e) => handleDeleteFolder(e, folder.id)} title="Xóa">
                                    <Trash2 size={18} />
                                </button>
                            </div>
                        </div>
                    ))
                ) : (
                    <div className="empty-folders">
                        <BookOpen size={40} />
                        <p>Chưa có sổ tay nào. Hãy tạo một sổ tay mới!</p>
                    </div>
                )}
            </div>
        </section>
      </main>

      <PracticeModePopup 
        isOpen={isPracticePopupOpen} 
        onClose={() => setIsPracticePopupOpen(false)}
        onSelectMode={handlePracticeSelect}
      />
    </div>
  );
};

export default MyNotebook;

