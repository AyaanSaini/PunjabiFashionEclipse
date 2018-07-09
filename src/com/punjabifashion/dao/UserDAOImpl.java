package com.punjabifashion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.punjabifashion.beans.User;
import com.punjabifashion.utils.DBUtil;

public class UserDAOImpl implements UserDAO {
	
	Connection con =  DBUtil.getConnection();
	
	@Override
	public boolean isValidUser(String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int addUser(User user){
		int resCode = 0;
		try{
			String query = "insert into user_table(username,email,password,question1,answer1,question2,answer2) values(???????)";
			PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1, user.getUsername());
				ps.setString(2, user.getEmail());
				ps.setString(3, user.getPassword());
				ps.setString(4, user.getQuestion1());
				ps.setString(5,user.getAnswer1());
				ps.setString(6, user.getQuestion2());
				ps.setString(7, user.getAnswer2());
			ResultSet rs = ps.executeQuery();
				resCode = 1;
				System.out.println(rs);
			
		}
		catch(SQLException se){
			System.out.println(se.getMessage());
			resCode = 2;			
		}catch(Exception e){
			System.out.println(e.getMessage());			
		}
		return resCode;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

}
