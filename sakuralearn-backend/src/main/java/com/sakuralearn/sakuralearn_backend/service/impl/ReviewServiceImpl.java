package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.ReviewRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.ReviewResponse;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.Review;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import com.sakuralearn.sakuralearn_backend.exception.ResourceNotFoundException;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
import com.sakuralearn.sakuralearn_backend.repository.EnrollmentRepository;
import com.sakuralearn.sakuralearn_backend.repository.ReviewRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {

    private final ReviewRepository reviewRepository;
    private final CourseRepository courseRepository;
    private final UserRepository userRepository;
    private final EnrollmentRepository enrollmentRepository;

    @Override
    @Transactional
    public ReviewResponse addReview(UUID userId, UUID courseId, ReviewRequest request) {
        // 1. Check if user is enrolled
        if (!enrollmentRepository.existsByUserIdAndCourseId(userId, courseId)) {
            throw new BadRequestException("You must be enrolled in the course to leave a review");
        }

        // 2. Check if user already reviewed
        if (reviewRepository.findByUserIdAndCourseId(userId, courseId).isPresent()) {
            throw new BadRequestException("You have already reviewed this course");
        }

        User user = userRepository.findById(userId).orElseThrow();
        Course course = courseRepository.findById(courseId)
                .orElseThrow(() -> new ResourceNotFoundException("Course not found"));

        Review review = Review.builder()
                .user(user)
                .course(course)
                .rating(request.getRating())
                .content(request.getContent())
                .build();

        Review saved = reviewRepository.save(review);
        return mapToResponse(saved);
    }

    @Override
    public List<ReviewResponse> getReviewsByCourse(UUID courseId) {
        return reviewRepository.findByCourseIdOrderByCreatedAtDesc(courseId)
                .stream()
                .map(this::mapToResponse)
                .toList();
    }

    @Override
    @Transactional
    public void deleteReview(UUID userId, UUID reviewId) {
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new ResourceNotFoundException("Review not found"));
        
        if (!review.getUser().getId().equals(userId)) {
            throw new BadRequestException("You do not have permission to delete this review");
        }

        reviewRepository.delete(review);
    }

    @Override
    public Double getAverageRating(UUID courseId) {
        Double avg = reviewRepository.getAverageRatingByCourseId(courseId);
        return avg != null ? avg : 0.0;
    }

    private ReviewResponse mapToResponse(Review review) {
        return ReviewResponse.builder()
                .id(review.getId())
                .userId(review.getUser().getId())
                .username(review.getUser().getFullName())
                .userAvatarUrl(review.getUser().getAvatarUrl())
                .rating(review.getRating())
                .content(review.getContent())
                .createdAt(review.getCreatedAt())
                .build();
    }
}
