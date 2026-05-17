# Module 2 & 3: Course & Progress Engine

## 1. Bài toán nghiệp vụ
Xây dựng CMS nội dung phân cấp (Course -> Lesson -> LessonBlock) và hệ thống theo dõi tiến độ học tập chi tiết (Granular Tracking).

## 2. Logic cốt lõi
- **Content Structure**: LessonBlock là đơn vị nhỏ nhất (Text, Video, Audio, Quiz).
- **Progress Calculation**: Tính toán ở cấp độ Block. 
  - `Progress = (Completed Blocks / Total Active Blocks) * 100`.
- **Media Streaming**: Hỗ trợ HTTP Range (Status 206) để streaming video/audio dung lượng lớn từ MinIO.

## 3. Điểm nhấn kỹ thuật (Senior Level)
- **Recalculation Logic**: Tự động tính lại tiến độ của toàn bộ User đã enroll khi giáo viên thêm/xóa/sửa LessonBlock.
- **Soft Delete Awareness**: Toàn bộ logic tính toán tiến độ đều loại trừ các Block có `isDeleted=true`.
- **Resume Feature**: Lưu `lastTimestamp` cho Media Block để user có thể học tiếp từ điểm đang dừng.

## 4. Interview Angle
"Thay vì chỉ track tiến độ ở cấp độ bài học, SakuraLearn track đến từng khối nội dung (Block). Điều này cho phép chúng tôi hỗ trợ tính năng Resume video và tính toán phần trăm hoàn thành cực kỳ chính xác, ngay cả khi nội dung khóa học bị thay đổi bởi giáo viên."
