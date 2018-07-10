package com.punjabifashion.validators;

import com.punjabifashion.beans.User;

public class UserValidation {
	String isValid = "";
	String usernameRegex = "(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{5,10})$";
	String passwordRegex = "[^A-Za-z0-9]{8,15}";
	/*Pattern UserNameattern = Pattern.compile(usernameRegex);
	Pattern passwordPattern = Pattern.compile(passwordRegex);*/
	public String validateUser(User user){
		if(
				user.getUsername().equals("")||
				user.getEmail().equals("")||
				user.getPassword().equals("")||
				user.getQuestion1().equals("")||
				user.getQuestion2().equals("")||
				user.getAnswer1().equals("")||
				user.getAnswer2().equals("")
		){
			isValid = "Please fill all Fields";
			System.out.println("Please fill all Fields");
		}
		else if(!user.getUsername().matches(usernameRegex)){
			isValid = "Please provide a correct username\n(Must contains at least 5 caracter, 1 capital caracter, 1 number and 1 small caracter)";
			System.out.println();
		}
		else if(user.getPassword().matches(passwordRegex)){
			isValid = "Please provide a correct password\n(Must contains at least 8 caracter, 1 capital caracter, 1 number and 1 small caracter)";
			System.out.println("password does not match");
		}
		else {
			isValid = "user is fine";
		}
		return isValid;
	}

}
