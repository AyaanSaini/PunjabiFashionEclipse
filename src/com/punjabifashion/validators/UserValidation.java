package com.punjabifashion.validators;

import com.punjabifashion.beans.User;

public class UserValidation {
	boolean isValid = false;
	String usernameRegex = "(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{5,10})$";
	String passwordRegex = "[^A-Za-z0-9]{8,15}";
	/*Pattern UserNameattern = Pattern.compile(usernameRegex);
	Pattern passwordPattern = Pattern.compile(passwordRegex);*/
	public boolean validateUser(User user){
		if(
				user.getUsername().equals("")||
				user.getEmail().equals("")||
				user.getPassword().equals("")||
				user.getQuestion1().equals("")||
				user.getQuestion2().equals("")||
				user.getAnswer1().equals("")||
				user.getAnswer2().equals("")
		){
			isValid = false;
		}
		else if(!(user.getUsername().matches(usernameRegex)||user.getPassword().matches(passwordRegex))){
			isValid = false;
		}
		else {
			isValid = true;
		}
		return isValid;
	}

}
