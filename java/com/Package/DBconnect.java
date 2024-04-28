package com.Package;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

public class DBconnect {
	
	// database connection
	private static String url = "jdbc:mysql://localhost:3306/my";
	private static String user = "root";
	private static String Pass = "2002";
	private static Connection con;
	
	//check and return connection
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, Pass);
			
		}catch(Exception e) {
			System.out.println("Database connection is not successful");
		}
		return con;
		
	}

}
