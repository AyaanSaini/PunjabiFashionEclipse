package com.punjabifashion.dao;

import java.util.List;

import com.punjabifashion.beans.Review;

public interface ReviewDAO {
	
	public int addComment(Review review);
	public List<Review> getProductReviews(String productId);
}
