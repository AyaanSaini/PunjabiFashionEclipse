package com.punjabifashion.service;

import com.punjabifashion.beans.User;

public interface UserService {
	
	public boolean isValidUser(String username,String password);

	int addUser(User user);

	int updateUser(User user);

	int deleteUser(String userId);
}
