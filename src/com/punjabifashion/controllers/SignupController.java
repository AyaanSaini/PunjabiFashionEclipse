package com.punjabifashion.controllers;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.punjabifashion.beans.User;
import com.punjabifashion.service.UserService;
import com.punjabifashion.service.UserServiceImpl;
import com.punjabifashion.validators.UserValidation;

@WebServlet("/Signup")
public class SignupController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpSession session;
	User user;
	UserValidation userValidation;
	UserService userService;
	int resCode;
	String message;
	String error;
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		      session = request.getSession();
		      if(session.getAttribute("session_user") == null || session.getAttribute("session_user").equals("")){
		    	  user = new User();
		    	  user.setUsername(request.getParameter("username"));
		    	  user.setEmail(request.getParameter("email"));
		    	  user.setPassword(request.getParameter("pwd"));
		    	  user.setQuestion1(request.getParameter("question1"));
		    	  user.setQuestion2(request.getParameter("question2"));
		    	  user.setAnswer1(request.getParameter("ans1"));
		    	  user.setAnswer2(request.getParameter("ans2"));
		 		    	  
		    	  userValidation = new UserValidation();
		    	  boolean isValidUser = userValidation.validateUser(user);
		    	  System.out.println("Is valid user : "+isValidUser);
		    	  if(isValidUser){
		    		  userService = new UserServiceImpl();
		    		  resCode = userService.addUser(user);
		    	  }
		    	  else{
		    		  error = "Please provide all details carefully";
		    	  }
		    	  
		    	  if(resCode==1){
		    		  message = "User Added Successfully";
		    		  response.sendRedirect("signup.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
		    	  }
		    	  else if(resCode == 2){
		    		  error = "User already exist";
		    		  response.sendRedirect("signup.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
		    	  }
		    	  else{
		    		  error = "Database error : Contact System Administrator";
		    		  response.sendRedirect("signup.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
		    	  }
		    	  
		      }
		      
	}
			

}
