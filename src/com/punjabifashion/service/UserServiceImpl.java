package com.punjabifashion.service;

import com.punjabifashion.beans.User;
import com.punjabifashion.dao.UserDAO;
import com.punjabifashion.dao.UserDAOImpl;


public class UserServiceImpl implements UserService{
	UserDAO userDAO = new UserDAOImpl();
	@Override
	public boolean isValidUser(String username, String password) {
		
		return userDAO.isValidUser(username,password);

	}

	@Override
	public int addUser(User user) {
		int resCode = 0;
		try{
			resCode = userDAO.addUser(user);
		}catch(Exception e){
			e.printStackTrace();
		}
		return resCode;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Override
	public int deleteUser(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
