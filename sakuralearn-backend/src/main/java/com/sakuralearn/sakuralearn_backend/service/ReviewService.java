package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.ReviewRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.ReviewResponse;

import java.util.List;
import java.util.UUID;

public interface ReviewService {
    ReviewResponse addReview(UUID userId, UUID courseId, ReviewRequest request);
    List<ReviewResponse> getReviewsByCourse(UUID courseId, UUID currentUserId);
    void deleteReview(UUID userId, UUID reviewId);
    Double getAverageRating(UUID courseId);
}
