package com.punjabifashion.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.punjabifashion.beans.User;
import com.punjabifashion.validators.UserValidation;

public class SignupController extends HttpServlet {
	HttpSession session;
	User user;
	UserValidation userValidation;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		      session = request.getSession();
		      if(session.getAttribute("session_user") == null || session.getAttribute("session_user").equals("")){
		    	  user = new User();
		    	  user.setUsername(request.getParameter("username"));
		    	  user.setEmail(request.getParameter("email"));
		    	  user.setPassword(request.getParameter("pwd"));
		    	  user.setQuestion1(request.getParameter("q1"));
		    	  user.setQuestion2(request.getParameter("q2"));
		    	  user.setAnswer1(request.getParameter("ans1"));
		    	  user.setAnswer2(request.getParameter("ans2"));
		    	  
		    	  userValidation
		      }
		      
	}
			

}
