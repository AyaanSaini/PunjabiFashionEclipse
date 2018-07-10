package com.punjabifashion.dao;

import com.punjabifashion.beans.User;

public interface UserDAO {
	public String isValidUser(String username, String password);
	public int addUser(User user);
	public int updateUser(User user);
	public int deleteUser(User user);

}
