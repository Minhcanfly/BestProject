package com.sakuralearn.sakuralearn_backend.service.impl;
import com.sakuralearn.sakuralearn_backend.exception.ResourceNotFoundException;

import com.sakuralearn.sakuralearn_backend.dto.request.QuizRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.QuizSubmissionRequest;
import com.sakuralearn.sakuralearn_backend.entity.*;
import com.sakuralearn.sakuralearn_backend.repository.*;
import com.sakuralearn.sakuralearn_backend.service.QuizService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

@Service
@RequiredArgsConstructor
public class QuizServiceImpl implements QuizService {

    private final QuizRepository quizRepository;
    private final QuizQuestionRepository quizQuestionRepository;
    private final QuizAttemptRepository quizAttemptRepository;
    private final UserAnswerRepository userAnswerRepository;
    private final LessonRepository lessonRepository;
    private final LessonBlockRepository lessonBlockRepository;
    private final UserRepository userRepository;
    private final com.sakuralearn.sakuralearn_backend.service.ProgressService progressService;

    @Override
    @Transactional
    public Quiz createOrUpdateQuiz(QuizRequest request, UUID creatorId) {
        LessonBlock block = lessonBlockRepository.findById(request.getLessonBlockId())
                .orElseThrow(() -> new RuntimeException("Lesson block not found"));
        
        Quiz quiz = quizRepository.findByLessonBlockId(request.getLessonBlockId())
                .orElse(Quiz.builder()
                        .lessonBlock(block)
                        .lesson(block.getLesson())
                        .build());

        quiz.setTitle(request.getTitle());
        quiz.setType(request.getType());
        quiz.setTimeLimitSeconds(request.getTimeLimitSeconds());
        quiz.setCreatedBy(userRepository.getReferenceById(creatorId));

        Quiz savedQuiz = quizRepository.save(quiz);

        // Update questions safely for orphanRemoval
        savedQuiz.getQuestions().clear();
        
        List<QuizQuestion> questions = request.getQuestions().stream()
                .map(q -> QuizQuestion.builder()
                        .quiz(savedQuiz)
                        .questionText(q.getQuestionText())
                        .options(q.getOptions())
                        .correctAnswer(q.getCorrectAnswer())
                        .explanation(q.getExplanation())
                        .points(q.getPoints())
                        .build())
                .toList();
        
        savedQuiz.getQuestions().addAll(questions);
        return quizRepository.save(savedQuiz);
    }

    @Override
    public Quiz getQuizByBlockId(UUID blockId) {
        return quizRepository.findByLessonBlockId(blockId).orElse(null);
    }

    @Override
    @Transactional
    public QuizAttempt submitQuiz(UUID quizId, UUID userId, QuizSubmissionRequest request) {
        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new RuntimeException("Quiz not found"));
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));

        List<QuizQuestion> questions = quiz.getQuestions();
        List<UserAnswer> userAnswers = new ArrayList<>();
        AtomicReference<Double> totalScore = new AtomicReference<>(0.0);
        AtomicReference<Integer> earnedPoints = new AtomicReference<>(0);

        request.getAnswers().forEach((questionId, answer) -> {
            QuizQuestion question = questions.stream()
                    .filter(q -> q.getId().equals(questionId))
                    .findFirst()
                    .orElseThrow(() -> new RuntimeException("Question not found: " + questionId));

            boolean isCorrect = question.getCorrectAnswer().equalsIgnoreCase(answer.trim());
            int points = isCorrect ? question.getPoints() : 0;

            userAnswers.add(UserAnswer.builder()
                    .question(question)
                    .userAnswer(answer)
                    .isCorrect(isCorrect)
                    .pointsEarned(points)
                    .build());

            if (isCorrect) {
                earnedPoints.updateAndGet(v -> v + points);
            }
        });

        int maxPoints = questions.stream().mapToInt(QuizQuestion::getPoints).sum();
        double scorePercentage = maxPoints > 0 ? (double) earnedPoints.get() / maxPoints * 100 : 0;

        QuizAttempt attempt = QuizAttempt.builder()
                .quiz(quiz)
                .user(user)
                .score(scorePercentage)
                .timeTakenSeconds(request.getTimeTakenSeconds())
                .isCompleted(true)
                .build();

        QuizAttempt savedAttempt = quizAttemptRepository.save(attempt);
        userAnswers.forEach(ua -> ua.setAttempt(savedAttempt));
        userAnswerRepository.saveAll(userAnswers);

        // Award XP if passed (e.g. >= 70%)
        if (scorePercentage >= 70.0) {
            user.setXp(user.getXp() + 10); // Reward 10 XP
            userRepository.save(user);

            // Mark lesson block as completed
            if (quiz.getLessonBlock() != null) {
                com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockProgressRequest progressRequest = 
                    new com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockProgressRequest();
                progressRequest.setIsCompleted(true);
                progressService.updateBlockProgress(userId, quiz.getLessonBlock().getId(), progressRequest);
            }
        }

        return savedAttempt;
    }
}
