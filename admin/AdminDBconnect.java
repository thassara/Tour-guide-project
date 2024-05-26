package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdminDBconnect {
	
	// database connection
	private static String url = "jdbc:mysql://localhost:3306/admin";
	private static String user = "root";
	private static String Pass = "eranga@19222";
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
