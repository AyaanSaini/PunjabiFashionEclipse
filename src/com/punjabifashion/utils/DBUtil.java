package com.punjabifashion.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	Connection con;
	String database;
	String url = "jdbc:mysql://localhost:3306/";
	String username;
	String password;
	
	public Connection getConnection() {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url+database,username,password);
		}
		catch(SQLException se){
			System.out.println(this+":SQLException::"+se);
		}catch(ClassNotFoundException ce){
			System.out.println(this+"ClassNotFoundException::"+ce);
		}
		return con;
		
	}
	
	

}
