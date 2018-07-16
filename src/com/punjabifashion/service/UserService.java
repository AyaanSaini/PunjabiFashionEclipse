package com.punjabifashion.service;

import java.sql.SQLException;

import com.punjabifashion.beans.User;

public interface UserService {
	
	public String isValidUser(String username,String password) throws SQLException;

	int addUser(User user);

	int updateUser(User user);

	int deleteUser(String userId);
}
