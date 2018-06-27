package com.punjabifashion.validators;

import com.punjabifashion.beans.Review;

public class ReviewValidation {
	
	public boolean reviewValidation(Review review){
		boolean isValid = false;
		if(
			(review.getUser() == null || review.getUser().equals(""))||
			(review.getProduct() == null || review.getProduct().equals(""))||
			(review.getComment() == null || review.getComment().equals(""))
		){
			isValid = false;
		}
		else if((review.getRating()+"").matches("[1-5]{1}")){
			isValid = true;
		}
		
		return isValid;
	}

}
