package com.sakuralearn.sakuralearn_backend.service.impl;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import com.sakuralearn.sakuralearn_backend.entity.enums.AiModelProvider;
import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonBlockRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.service.AiSyllabusService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.chat.model.ChatResponse;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class AiSyllabusServiceImpl implements AiSyllabusService {

    private final CourseRepository courseRepository;
    private final LessonRepository lessonRepository;
    private final LessonBlockRepository lessonBlockRepository;
    private final ObjectMapper objectMapper;

    @Qualifier("gpt4oChatModel")
    private final ChatModel gpt4oChatModel;

    @Qualifier("geminiChatModel")
    private final ChatModel geminiChatModel;

    @Qualifier("grokChatModel")
    private final ChatModel grokChatModel;

    @Override
    @Transactional
    public void generateSyllabusForCourse(UUID courseId, String model) {
        Course course = courseRepository.findByIdAndIsDeletedFalse(courseId)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        AiModelProvider provider = AiModelProvider.fromString(model);
        ChatModel selectedModel = selectModel(provider);

        String promptText = String.format("""
            Generate a structured Japanese syllabus for a course titled '%s' at JLPT level %s.
            Provide 5 lessons. Each lesson should have 3 blocks: a TEXT block for explanation, a VIDEO placeholder block, and a QUIZ block.
            Return ONLY a raw JSON array of objects with this structure:
            [
              {
                "titleVi": "Lesson Title in Vietnamese",
                "titleJa": "Lesson Title in Japanese",
                "blocks": [
                  {
                    "blockType": "TEXT",
                    "contentVi": "Detailed explanation in Vietnamese",
                    "contentJa": "Detailed explanation in Japanese"
                  },
                  { "blockType": "VIDEO", "metadata": "Video description" },
                  { "blockType": "QUIZ", "metadata": "Quiz context" }
                ]
              }
            ]
            """, course.getTitleVi(), course.getJlptLevel());

        try {
            log.info("Requesting AI Syllabus for course: {} using model: {}", course.getTitleVi(), provider);
            
            ChatResponse response = selectedModel.call(new Prompt(promptText));
            String content = response.getResult().getOutput().getText();
            
            // Clean up content if AI returns markdown markers
            if (content.contains("```json")) {
                content = content.substring(content.indexOf("```json") + 7, content.lastIndexOf("```"));
            } else if (content.contains("```")) {
                content = content.substring(content.indexOf("```") + 3, content.lastIndexOf("```"));
            }

            List<Map<String, Object>> syllabus = objectMapper.readValue(content, new TypeReference<>() {});
            saveSyllabus(course, syllabus);
            
        } catch (Exception e) {
            log.error("Failed to generate AI syllabus with model {}, falling back to seed", provider, e);
            seedMockSyllabus(course);
        }
    }

    private ChatModel selectModel(AiModelProvider provider) {
        return switch (provider) {
            case GEMINI_PRO -> geminiChatModel;
            case GROK_1 -> grokChatModel;
            default -> gpt4oChatModel;
        };
    }

    private void saveSyllabus(Course course, List<Map<String, Object>> syllabus) {
        int lessonIdx = 1;
        for (Map<String, Object> lessonData : syllabus) {
            Lesson lesson = Lesson.builder()
                    .course(course)
                    .titleVi((String) lessonData.get("titleVi"))
                    .titleJa((String) lessonData.get("titleJa"))
                    .orderIndex(lessonIdx++)
                    .isDeleted(false)
                    .build();
            
            Lesson savedLesson = lessonRepository.save(lesson);
            
            List<Map<String, Object>> blocksData = (List<Map<String, Object>>) lessonData.get("blocks");
            int blockIdx = 1;
            for (Map<String, Object> blockData : blocksData) {
                lessonBlockRepository.save(LessonBlock.builder()
                        .lesson(savedLesson)
                        .blockType(LessonBlockType.valueOf((String) blockData.get("blockType")))
                        .contentVi((String) blockData.get("contentVi"))
                        .metadata((String) blockData.get("metadata"))
                        .orderIndex(blockIdx++)
                        .build());
            }
        }
    }

    private void seedMockSyllabus(Course course) {
        String level = course.getJlptLevel();
        log.info("Generating Smart Template for level: {}", level);

        List<TemplateLesson> template = getTemplateForLevel(level);

        int lessonIdx = 1;
        for (TemplateLesson tLesson : template) {
            Lesson lesson = Lesson.builder()
                    .course(course)
                    .titleVi(tLesson.titleVi)
                    .titleJa(tLesson.titleJa)
                    .orderIndex(lessonIdx++)
                    .isDeleted(false)
                    .build();
            
            Lesson savedLesson = lessonRepository.save(lesson);

            // Add standard blocks for each lesson
            lessonBlockRepository.save(LessonBlock.builder()
                    .lesson(savedLesson)
                    .blockType(LessonBlockType.TEXT)
                    .orderIndex(1)
                    .contentVi(tLesson.contentVi)
                    .build());
            
            lessonBlockRepository.save(LessonBlock.builder()
                    .lesson(savedLesson)
                    .blockType(LessonBlockType.VIDEO)
                    .orderIndex(2)
                    .contentVi("Hướng dẫn Video cho " + tLesson.titleVi)
                    .metadata("{\"placeholder\": true}")
                    .build());

            lessonBlockRepository.save(LessonBlock.builder()
                    .lesson(savedLesson)
                    .blockType(LessonBlockType.QUIZ)
                    .orderIndex(3)
                    .metadata("{\"quiz_id\": \"pending\"}")
                    .build());
        }
    }

    private List<TemplateLesson> getTemplateForLevel(String level) {
        return switch (level.toUpperCase()) {
            case "N5" -> List.of(
                new TemplateLesson("Chào hỏi & Giới thiệu", "挨拶と自己紹介", "Học cách chào hỏi cơ bản và giới thiệu bản thân bằng tiếng Nhật."),
                new TemplateLesson("Số đếm & Thời gian", "数字と時間", "Nắm vững cách đếm số và hỏi đáp về thời gian, ngày tháng."),
                new TemplateLesson("Đồ vật & Vị trí", "これ・それ・あれ", "Cách chỉ định đồ vật và mô tả vị trí trong không gian."),
                new TemplateLesson("Động từ di chuyển", "行きます・来ます", "Học về các động từ di chuyển cơ bản và trợ từ liên quan."),
                new TemplateLesson("Tính từ cơ bản", "形容詞", "Sử dụng tính từ để mô tả đặc điểm của sự vật, sự việc.")
            );
            case "N4" -> List.of(
                new TemplateLesson("Thể Te & Yêu cầu", "〜てください", "Cách chia động từ thể Te và đưa ra lời yêu cầu lịch sự."),
                new TemplateLesson("Thể Từ điển & Ý định", "辞書形とつもり", "Sử dụng thể từ điển để diễn đạt dự định và ý muốn."),
                new TemplateLesson("Thể Khả năng", "可能形", "Diễn đạt khả năng có thể làm được việc gì đó."),
                new TemplateLesson("Thể Kính ngữ cơ bản", "尊敬語と謙譲語", "Làm quen với cách nói trang trọng trong tiếng Nhật."),
                new TemplateLesson("Câu điều kiện", "〜たら・〜ば", "Cách sử dụng các cấu trúc giả định và điều kiện.")
            );
            case "N3" -> List.of(
                new TemplateLesson("Mối quan hệ nhân quả", "こと・もの", "Phân biệt các cấu trúc diễn đạt nguyên nhân và kết quả."),
                new TemplateLesson("Sự phỏng đoán", "はず・に違いない", "Cách thể hiện sự phỏng đoán dựa trên căn cứ."),
                new TemplateLesson("Trạng thái & Sự thay đổi", "〜まま・〜っぱなし", "Diễn đạt trạng thái được giữ nguyên hoặc sự biến đổi."),
                new TemplateLesson("Kính ngữ nâng cao", "敬語の応用", "Sử dụng kính ngữ trong các tình huống kinh doanh phức tạp."),
                new TemplateLesson("Ngôn ngữ đời thường", "ため口", "Cách nói chuyện thân mật và các hậu tố thường dùng.")
            );
            case "N2" -> List.of(
                new TemplateLesson("Cấu trúc trang trọng", "〜にあたって", "Sử dụng ngữ pháp đặc thù trong văn viết và phát biểu."),
                new TemplateLesson("Sự đánh giá & Quan điểm", "〜に限らず", "Diễn đạt phạm vi và các quan điểm đa chiều."),
                new TemplateLesson("Sự tương phản", "〜反面", "Cách so sánh hai mặt của một vấn đề phức tạp."),
                new TemplateLesson("Trạng thái tâm lý", "〜がたい", "Diễn đạt những cảm xúc khó nói thành lời."),
                new TemplateLesson("Bối cảnh xã hội", "〜をめぐって", "Thảo luận về các vấn đề xung quanh một sự kiện.")
            );
            case "N1" -> List.of(
                new TemplateLesson("Ngữ pháp cổ điển", "〜なりに", "Sử dụng các cấu trúc trang trọng nhất và mang sắc thái cổ."),
                new TemplateLesson("Sự tuyệt đối", "〜極まる", "Diễn đạt mức độ cực hạn của một sự việc."),
                new TemplateLesson("Logic logic học", "〜ゆえに", "Cấu trúc liên kết lập luận chặt chẽ trong văn bản học thuật."),
                new TemplateLesson("Sắc thái biểu cảm", "〜きらいがある", "Thể hiện các xu hướng và sắc thái phê phán tinh tế."),
                new TemplateLesson("Triết lý sống", "〜までのことだ", "Diễn đạt quyết tâm và triết lý cá nhân.")
            );
            default -> List.of(
                new TemplateLesson("Bài học tổng quan", "概要", "Nội dung tổng quát cho khóa học này.")
            );
        };
    }

    private static class TemplateLesson {
        String titleVi;
        String titleJa;
        String contentVi;

        TemplateLesson(String titleVi, String titleJa, String contentVi) {
            this.titleVi = titleVi;
            this.titleJa = titleJa;
            this.contentVi = contentVi;
        }
    }
}
