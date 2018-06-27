package com.punjabifashion.validators;

import com.punjabifashion.beans.Rating;

public class RatingValidation {

	public boolean ratingValidation(Rating rating){
		boolean isValid = false;
		if(rating.getProduct() == null || 	rating.getUser() == null)
			isValid = false;
		else if((rating.getRating()+"").matches("[1-5]{1}")){
			isValid = true;
		}
		return isValid;
	}
}
