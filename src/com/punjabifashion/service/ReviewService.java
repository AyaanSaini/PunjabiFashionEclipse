package com.punjabifashion.service;

import java.util.List;

import com.punjabifashion.beans.Review;

public interface ReviewService {
	
	public int addComment(Review review);
	
	public List<Review> getProductReview(String productId);

}
