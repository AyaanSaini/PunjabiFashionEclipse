package com.punjabifashion.dao;

import java.sql.SQLException;

import com.punjabifashion.beans.User;

public interface UserDAO {
	public String isValidUser(String username, String password) throws SQLException;
	public int addUser(User user)throws SQLException;
	public int updateUser(User user)throws SQLException;
	public int deleteUser(User user)throws SQLException;

}
