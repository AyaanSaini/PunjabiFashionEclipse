package com.punjabifashion.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	static Connection con;
	static String database = "fashionpunjabi";
	static String url = "jdbc:mysql://localhost:3306/";
	static String username = "root";
	static String password = "root";
	
	public static Connection getConnection() {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url+database,username,password);
		}
		catch(SQLException se){
			System.out.println("SQLException::"+se);
		}catch(ClassNotFoundException ce){
			System.out.println("ClassNotFoundException::"+ce);
		}
		return con;
		
	}
	
	

}
