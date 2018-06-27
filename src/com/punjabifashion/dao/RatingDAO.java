package com.punjabifashion.dao;

import com.punjabifashion.beans.Rating;

public interface RatingDAO {

	public int addRating(Rating rating);
	public int getProductAvgRating(String productId);
	public int getProductUserRating(String userId, String productId);
}
