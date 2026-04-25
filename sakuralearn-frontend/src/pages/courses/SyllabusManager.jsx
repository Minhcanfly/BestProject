import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { courseService } from '../../services/courseService';
import { lessonService, lessonBlockService } from '../../services/lessonService';
import { fileService } from '../../services/fileService';
import { getApiErrorMessage } from '../../utils/apiError';
import { ROUTES } from '../../constants/routes';
import StatusMessage from '../../components/common/StatusMessage';
import { 
  ChevronLeft, 
  Plus, 
  GripVertical, 
  Trash2, 
  Edit3, 
  Type, 
  Video, 
  Music, 
  Image as ImageIcon,
  Check,
  X,
  UploadCloud,
  Zap,
  HelpCircle
} from 'lucide-react';
import QuizEditor from '../../components/courses/QuizEditor';
import { quizService } from '../../services/quizService';
import {
  DndContext, 
  closestCenter,
  KeyboardSensor,
  PointerSensor,
  useSensor,
  useSensors,
} from '@dnd-kit/core';
import {
  arrayMove,
  SortableContext,
  sortableKeyboardCoordinates,
  verticalListSortingStrategy,
  useSortable
} from '@dnd-kit/sortable';
import { CSS } from '@dnd-kit/utilities';
import './SyllabusManager.css';

// --- Sortable Item Component for Lessons ---
const SortableLesson = ({ lesson, index, isSelected, onClick, onEdit, onDelete }) => {
  const {
    attributes,
    listeners,
    setNodeRef,
    transform,
    transition,
    isDragging
  } = useSortable({ id: lesson.id });

  const style = {
    transform: CSS.Transform.toString(transform),
    transition,
    zIndex: isDragging ? 10 : 1,
    opacity: isDragging ? 0.5 : 1
  };

  return (
    <div 
      ref={setNodeRef}
      style={style}
      className={`lesson-admin-item ${isSelected ? 'active' : ''}`}
      onClick={() => onClick(lesson)}
    >
      <div {...attributes} {...listeners} className="drag-handle-wrapper">
        <GripVertical size={16} className="drag-handle" />
      </div>
      <span className="lesson-idx">{index + 1}.</span>
      <span className="lesson-name-admin">{lesson.titleVi}</span>
      <div className="lesson-actions-mini">
         <button className="mini-action-btn" onClick={(e) => {
           e.stopPropagation();
           onEdit(lesson);
         }}><Edit3 size={14} /></button>
         <button className="mini-action-btn delete" onClick={(e) => {
           e.stopPropagation();
           onDelete(lesson.id);
         }}><Trash2 size={14} /></button>
      </div>
    </div>
  );
};

// --- Sortable Item Component for Blocks ---
const SortableBlock = ({ block, index, getBlockIcon, onEdit, onDelete }) => {
  const {
    attributes,
    listeners,
    setNodeRef,
    transform,
    transition,
    isDragging
  } = useSortable({ id: block.id });

  const style = {
    transform: CSS.Transform.toString(transform),
    transition,
    zIndex: isDragging ? 20 : 1,
    opacity: isDragging ? 0.6 : 1
  };

  return (
    <div ref={setNodeRef} style={style} className="block-admin-item">
      <div className="block-admin-header">
        <div className="block-type-info">
           <div {...attributes} {...listeners} className="drag-handle-inline">
              <GripVertical size={14} />
           </div>
           {getBlockIcon(block.blockType)}
           <span className="block-type-name">{block.blockType}</span>
           <span className="block-index">Khối #{index + 1}</span>
        </div>
        <div className="block-admin-actions">
           <button className="block-btn-icon" onClick={() => onEdit(block)}><Edit3 size={16} /></button>
           <button className="block-btn-icon delete" onClick={() => onDelete(block.id)}><Trash2 size={16} /></button>
        </div>
      </div>
      <div className="block-admin-preview">
         {block.blockType === 'TEXT' ? (
            <div className="text-preview-mini" dangerouslySetInnerHTML={{ __html: block.contentVi }} />
         ) : (
            <div className="media-preview-mini">
               <span>{block.blockType} content: {block.contentVi?.substring(0, 100)}...</span>
            </div>
         )}
      </div>
    </div>
  );
};

const SyllabusManager = () => {
  const { id: courseId } = useParams();
  const navigate = useNavigate();

  const [course, setCourse] = useState(null);
  const [lessons, setLessons] = useState([]);
  const [selectedLesson, setSelectedLesson] = useState(null);
  const [blocks, setBlocks] = useState([]);
  const [loading, setLoading] = useState(true);
  const [errorMessage, setErrorMessage] = useState('');

  // Sensors for DND
  const sensors = useSensors(
    useSensor(PointerSensor),
    useSensor(KeyboardSensor, {
      coordinateGetter: sortableKeyboardCoordinates,
    })
  );

  // Lesson Form State
  const [showLessonForm, setShowLessonForm] = useState(false);
  const [lessonEditing, setLessonEditing] = useState(null);
  const [lessonName, setLessonName] = useState('');

  // Block Form State
  const [showBlockForm, setShowBlockForm] = useState(false);
  const [blockEditing, setBlockEditing] = useState(null);
  const [uploading, setUploading] = useState(false);
  const [blockData, setBlockData] = useState({
    orderIndex: 1
  });
  const [quizQuestions, setQuizQuestions] = useState([]);

  const handleFileUpload = async (e) => {
    const file = e.target.files[0];
    if (!file) return;

    setUploading(true);
    try {
      const response = await fileService.uploadFile(file);
      const url = response.data.url;
      const field = blockData.blockType === 'VIDEO' ? 'videoUrl' : blockData.blockType === 'AUDIO' ? 'audioUrl' : 'imageUrl';
      setBlockData(prev => ({ ...prev, [field]: url }));
    } catch (err) {
      setErrorMessage('Lỗi khi tải tệp lên: ' + getApiErrorMessage(err));
    } finally {
      setUploading(false);
    }
  };

  useEffect(() => {
    fetchInitialData();
  }, [courseId]);

  useEffect(() => {
    if (selectedLesson) {
      fetchBlocks(selectedLesson.id);
    } else {
      setBlocks([]);
    }
  }, [selectedLesson]);

  const fetchInitialData = async () => {
    setLoading(true);
    setErrorMessage('');
    try {
      const [courseRes, lessonsRes] = await Promise.all([
        courseService.getCourseById(courseId),
        lessonService.getLessonsByCourse(courseId)
      ]);
      setCourse(courseRes.data);
      // Sort lessons by orderIndex initially
      const sortedLessons = [...lessonsRes.data].sort((a, b) => a.orderIndex - b.orderIndex);
      setLessons(sortedLessons);
      if (sortedLessons.length > 0) {
        setSelectedLesson(sortedLessons[0]);
      }
    } catch (err) {
      console.error('Error fetching syllabus data:', err);
      setErrorMessage(getApiErrorMessage(err, 'Không thể tải dữ liệu giáo trình.'));
    } finally {
      setLoading(false);
    }
  };

  const fetchBlocks = async (lessonId) => {
    try {
      const response = await lessonBlockService.getBlocksByLesson(lessonId);
      const sortedBlocks = [...response.data].sort((a, b) => a.orderIndex - b.orderIndex);
      setBlocks(sortedBlocks);
    } catch (err) {
      console.error('Error fetching blocks:', err);
      setErrorMessage(getApiErrorMessage(err, 'Không thể tải danh sách nội dung bài học.'));
    }
  };

  const refreshLessons = async () => {
    const res = await lessonService.getLessonsByCourse(courseId);
    const sorted = [...res.data].sort((a, b) => a.orderIndex - b.orderIndex);
    setLessons(sorted);
    return sorted;
  };

  // --- Lesson Handlers ---

  const handleSaveLesson = async () => {
    if (!lessonName.trim()) return;
    
    try {
      setErrorMessage('');
      const formData = new FormData();
      formData.append('titleVi', lessonName);
      formData.append('lessonType', 'VIDEO'); // Default
      formData.append('orderIndex', lessonEditing?.orderIndex || lessons.length + 1);

      if (lessonEditing) {
        await lessonService.updateLesson(courseId, lessonEditing.id, formData);
      } else {
        await lessonService.createLesson(courseId, formData);
      }
      
      await refreshLessons();
      setShowLessonForm(false);
      setLessonName('');
      setLessonEditing(null);
    } catch (err) {
      setErrorMessage(getApiErrorMessage(err, 'Lỗi khi lưu bài học.'));
    }
  };

  const handleDeleteLesson = async (id) => {
    if (!window.confirm('Xóa bài học này?')) return;
    try {
      setErrorMessage('');
      await lessonService.deleteLesson(courseId, id);
      const updatedLessons = await refreshLessons();
      if (selectedLesson?.id === id) setSelectedLesson(updatedLessons[0] || null);
    } catch (err) {
      setErrorMessage(getApiErrorMessage(err, 'Lỗi khi xóa bài học.'));
    }
  };

  const handleLessonDragEnd = async (event) => {
    const { active, over } = event;
    if (!over || active.id === over.id) return;

    const oldIndex = lessons.findIndex((l) => l.id === active.id);
    const newIndex = lessons.findIndex((l) => l.id === over.id);
    const newLessons = arrayMove(lessons, oldIndex, newIndex);
    
    setLessons(newLessons);
    
    try {
      await lessonService.reorderLessons(courseId, newLessons.map(l => l.id));
    } catch (err) {
      console.error('Error reordering lessons:', err);
      setErrorMessage('Không thể lưu thứ tự bài học mới.');
      refreshLessons(); // Revert to server state
    }
  };

  // --- Block Handlers ---

  const handleBlockDragEnd = async (event) => {
    const { active, over } = event;
    if (!over || active.id === over.id) return;

    const oldIndex = blocks.findIndex((b) => b.id === active.id);
    const newIndex = blocks.findIndex((b) => b.id === over.id);
    const newBlocks = arrayMove(blocks, oldIndex, newIndex);
    
    setBlocks(newBlocks);
    
    try {
      await lessonBlockService.reorderBlocks(selectedLesson.id, newBlocks.map(b => b.id));
    } catch (err) {
      console.error('Error reordering blocks:', err);
      setErrorMessage('Không thể lưu thứ tự nội dung mới.');
      fetchBlocks(selectedLesson.id); 
    }
  };

  const handleSaveBlock = async () => {
    try {
      setErrorMessage('');
      let savedBlockId = blockEditing?.id;
      
      if (blockEditing) {
        await lessonBlockService.updateBlock(selectedLesson.id, blockEditing.id, blockData);
      } else {
        const response = await lessonBlockService.createBlock(selectedLesson.id, {
          ...blockData,
          orderIndex: blocks.length + 1
        });
        savedBlockId = response.data.id;
      }

      // If it's a QUIZ, save questions
      if (blockData.blockType === 'QUIZ' && quizQuestions.length > 0) {
        // Map questions to match backend DTO (stringify options array)
        const formattedQuestions = quizQuestions.map(q => ({
          ...q,
          options: JSON.stringify(q.options)
        }));

        await quizService.createOrUpdateQuiz({
          lessonBlockId: savedBlockId,
          title: selectedLesson.titleVi + ' Quiz',
          type: 'MULTIPLE_CHOICE',
          questions: formattedQuestions
        });
      }

      fetchBlocks(selectedLesson.id);
      setShowBlockForm(false);
      setBlockEditing(null);
      setQuizQuestions([]);
    } catch (err) {
      setErrorMessage(getApiErrorMessage(err, 'Lỗi khi lưu nội dung.'));
    }
  };

  const handleDeleteBlock = async (id) => {
    if (!window.confirm('Xóa khối nội dung này?')) return;
    try {
      setErrorMessage('');
      await lessonBlockService.deleteBlock(selectedLesson.id, id);
      fetchBlocks(selectedLesson.id);
    } catch (err) {
      setErrorMessage(getApiErrorMessage(err, 'Lỗi khi xóa khối nội dung.'));
    }
  };

  const getBlockIcon = (type) => {
    switch (type) {
      case 'TEXT': return <Type size={18} />;
      case 'VIDEO': return <Video size={18} />;
      case 'AUDIO': return <Music size={18} />;
      case 'QUIZ': return <HelpCircle size={18} />;
      default: return <ImageIcon size={18} />;
    }
  };

  if (loading) return <div className="syllabus-loading"><div className="loader"></div></div>;

  return (
    <div className="syllabus-manager-page">
      <div className="manager-header">
        <button className="home-btn-mini" onClick={() => navigate(ROUTES.HOME)} title="Về trang chủ">🌸</button>
        <button className="back-btn" onClick={() => navigate(ROUTES.TEACHER_COURSE_EDIT(courseId))}>
           <ChevronLeft size={20} /> Quay lại trình sửa khóa học
        </button>
        <h1>Quản lý giáo trình: {course?.titleVi}</h1>
      </div>
      <StatusMessage type="error" message={errorMessage} />

      <div className="manager-grid">
        {/* Left: Lesson List with DND */}
        <aside className="lessons-sidebar glass-effect">
          <div className="sidebar-title">
             <h3>Danh sách bài học</h3>
             <button className="icon-btn-add" onClick={() => {
                setLessonEditing(null);
                setLessonName('');
                setShowLessonForm(true);
             }}><Plus size={18} /></button>
          </div>

          {showLessonForm && (
            <div className="lesson-form-mini">
               <input 
                 type="text" 
                 value={lessonName} 
                 onChange={(e) => setLessonName(e.target.value)} 
                 placeholder="Tên bài học..."
                 autoFocus
               />
               <div className="form-mini-actions">
                  <button onClick={handleSaveLesson}><Check size={16} /></button>
                  <button onClick={() => setShowLessonForm(false)} className="cancel"><X size={16} /></button>
               </div>
            </div>
          )}

          <div className="lessons-list-admin">
            <DndContext 
              sensors={sensors}
              collisionDetection={closestCenter}
              onDragEnd={handleLessonDragEnd}
            >
              <SortableContext 
                items={lessons.map(l => l.id)}
                strategy={verticalListSortingStrategy}
              >
                {lessons.map((lesson, idx) => (
                  <SortableLesson 
                    key={lesson.id}
                    lesson={lesson}
                    index={idx}
                    isSelected={selectedLesson?.id === lesson.id}
                    onClick={setSelectedLesson}
                    onEdit={(l) => {
                      setLessonEditing(l);
                      setLessonName(l.titleVi);
                      setShowLessonForm(true);
                    }}
                    onDelete={handleDeleteLesson}
                  />
                ))}
              </SortableContext>
            </DndContext>
          </div>
        </aside>

        {/* Right: Blocks Manager with DND */}
        <main className="blocks-manager glass-effect">
          {selectedLesson ? (
            <>
              <div className="blocks-header">
                <div>
                   <h2>Bài {lessons.findIndex(l => l.id === selectedLesson.id) + 1}: {selectedLesson.titleVi}</h2>
                   <p>Quản lý các khối nội dung trong bài học này</p>
                </div>
                {!showBlockForm && (
                  <button className="add-block-btn" onClick={() => {
                    setBlockEditing(null);
                    setBlockData({ blockType: 'TEXT', contentVi: '', videoUrl: '', audioUrl: '', imageUrl: '', orderIndex: blocks.length + 1 });
                    setShowBlockForm(true);
                  }}>
                    <Plus size={16} /> Thêm nội dung
                  </button>
                )}
              </div>

              {showBlockForm && (
                <div className="block-editor-inline glass-effect">
                   <div className="editor-row">
                      <div className="editor-group">
                        <label>Loại nội dung</label>
                        <select 
                          value={blockData.blockType} 
                          onChange={(e) => setBlockData({...blockData, blockType: e.target.value})}
                        >
                           <option value="TEXT">Văn bản (HTML)</option>
                           <option value="VIDEO">Video</option>
                           <option value="AUDIO">Âm thanh</option>
                           <option value="IMAGE">Hình ảnh</option>
                           <option value="QUIZ">Trắc nghiệm</option>
                        </select>
                      </div>
                   </div>

                   {blockData.blockType !== 'TEXT' && blockData.blockType !== 'QUIZ' && (
                     <div className="editor-group">
                        <label>Tải lên tệp hoặc Nhập URL</label>
                        <div className="upload-input-group">
                          <input 
                            type="text" 
                            placeholder="https://..." 
                            value={blockData.blockType === 'VIDEO' ? blockData.videoUrl || '' : blockData.blockType === 'AUDIO' ? blockData.audioUrl || '' : blockData.imageUrl || ''}
                            onChange={(e) => {
                              const field = blockData.blockType === 'VIDEO' ? 'videoUrl' : blockData.blockType === 'AUDIO' ? 'audioUrl' : 'imageUrl';
                              setBlockData({...blockData, [field]: e.target.value});
                            }}
                          />
                          <label className="upload-btn-mini">
                            <UploadCloud size={16} /> Tải lên
                            <input 
                              type="file" 
                              hidden 
                              onChange={handleFileUpload} 
                              accept={blockData.blockType === 'VIDEO' ? 'video/*' : blockData.blockType === 'AUDIO' ? 'audio/*' : 'image/*'} 
                            />
                          </label>
                        </div>
                        {uploading && <div className="upload-progress-mini">Đang tải lên...</div>}
                     </div>
                   )}

                   {blockData.blockType === 'QUIZ' && (
                      <QuizEditor 
                        questions={quizQuestions} 
                        setQuestions={setQuizQuestions} 
                      />
                   )}

                   <div className="editor-group">
                      <label>Nội dung / Mô tả</label>
                      <textarea 
                        rows="4" 
                        value={blockData.contentVi || ''} 
                        onChange={(e) => setBlockData({...blockData, contentVi: e.target.value})}
                        placeholder="Nhập nội dung bài học hoặc mô tả media..."
                      ></textarea>
                   </div>

                   <div className="editor-actions">
                      <button className="save-block-btn" disabled={uploading} onClick={handleSaveBlock}>Lưu nội dung</button>
                      <button className="cancel-block-btn" onClick={() => setShowBlockForm(false)}>Hủy</button>
                   </div>
                </div>
              )}

              <div className="blocks-list-admin">
                <DndContext 
                  sensors={sensors}
                  collisionDetection={closestCenter}
                  onDragEnd={handleBlockDragEnd}
                >
                  <SortableContext 
                    items={blocks.map(b => b.id)}
                    strategy={verticalListSortingStrategy}
                  >
                    {blocks.length > 0 ? (
                      blocks.map((block, idx) => (
                        <SortableBlock 
                          key={block.id}
                          block={block}
                          index={idx}
                          getBlockIcon={getBlockIcon}
                          onEdit={async (b) => {
                            setBlockEditing(b);
                            setBlockData(b);
                            setShowBlockForm(true);
                            if (b.blockType === 'QUIZ') {
                              try {
                                const qRes = await quizService.getQuizByBlock(b.id);
                                if (qRes.data && qRes.data.questions) {
                                  const parsedQuestions = qRes.data.questions.map(q => ({
                                    ...q,
                                    options: typeof q.options === 'string' ? JSON.parse(q.options) : q.options
                                  }));
                                  setQuizQuestions(parsedQuestions);
                                }
                              } catch (err) {
                                console.error('Error fetching quiz for edit:', err);
                                setQuizQuestions([]);
                              }
                            } else {
                              setQuizQuestions([]);
                            }
                          }}
                          onDelete={handleDeleteBlock}
                        />
                      ))
                    ) : (
                      !showBlockForm && (
                        <div className="no-blocks-msg">
                           <p>Bài học này chưa có nội dung. Hãy nhấn "Thêm nội dung" để bắt đầu!</p>
                        </div>
                      )
                    )}
                  </SortableContext>
                </DndContext>
              </div>
            </>
          ) : (
            <div className="no-lesson-selected">
               <p>Vui lòng chọn một bài học bên trái để xem nội dung.</p>
            </div>
          )}
        </main>
      </div>
    </div>
  );
};

export default SyllabusManager;
