package com.punjabifashion.dao;

import com.punjabifashion.beans.User;

public interface UserDAO {
	public boolean isUser(User user);
	public int addUser(User user);
	public int updateUser(User user);
	public int deleteUser(User user);

}
