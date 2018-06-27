package com.punjabifashion.service;

import com.punjabifashion.beans.Rating;

public interface RatingService {
	
	public int addRating(Rating rating);
	public int getProductAvgRating(String productId);
	public int getProductUserRating(String userId, String productId);

}
