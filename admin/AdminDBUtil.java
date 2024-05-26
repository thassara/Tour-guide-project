package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	private static boolean isSuccess;
	// database connection
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	public static List <Admin> validate (String username,String password) {
		
		ArrayList <Admin> ad = new ArrayList <Admin>();
		
		try {
			con =AdminDBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM adminprofile WHERE email='" + username + "' AND password ='" + password+"'";
			rs =stmt.executeQuery(sql);
			
			if (rs.next()) {
				int adminid = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String address = rs.getString(4);
				String password1 = rs.getString(5);
				String job = rs.getString(6);
				String skill = rs.getString(7);
				String images = rs.getString(8);
				
				
				
				 
               Admin a = new Admin(adminid, name, email, address, password1, job, skill, images);
				
				ad.add(a);

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return ad;
			
	}
	
	//  admin insert
	public static boolean adminInsert(String name,String email,String address,String password,String job,String skills,String images) {

		boolean isSuccess = false;

		try {
			con =AdminDBconnect.getConnection();
			stmt = con.createStatement();
			
			

			String sql = "INSERT INTO adminprofile values (0,'" + name + "','" + email + "','" + address + "','" + password+ "','" + job + "','"+skills+"','"+images+"')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
		}
	
public static boolean updateadminprofile(String adminid, String name,String email,String address,String password,String job,String skills,String images) {
	
		
		try {
			con= AdminDBconnect.getConnection();
			stmt=con.createStatement();
			String sql = "update adminprofile set  name='"+name+"',email='"+email+"',address='"+address+"',password='"+password+"',job='"+job+"',skills='"+skills+"',images='"
			+images+"' where adminid='"+adminid+"'";
			 
			
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			
			else{
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
	return isSuccess;
}
public static ArrayList <Admin> getadmindetails(String id) {
	
	ArrayList <Admin> ad = new ArrayList <Admin>();
	
	try {
		con =AdminDBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * FROM adminprofile WHERE adminid='" + id + "'" ;
		rs =stmt.executeQuery(sql);
		
		if (rs.next()) {
			int adminid = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String address = rs.getString(4);
			String password1 = rs.getString(5);
			String job = rs.getString(6);
			String skill = rs.getString(7);
			String images = rs.getString(8);
			
			
			
			 
           Admin a = new Admin(adminid, name, email, address, password1, job, skill, images);
			
			ad.add(a);

		} else {
			isSuccess = false;
		}

	} catch (Exception e) {
		e.printStackTrace();

	}

	return ad;
		
}


//admin delete

public static boolean deteleadminprofile(String id) {

	int adminid = Integer.parseInt(id);

	try {
		con =AdminDBconnect.getConnection();
		stmt = con.createStatement();

		String sql = "delete from adminprofile where adminid ='" + adminid+ "'";
		int rs = stmt.executeUpdate(sql);

		if (rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

	return isSuccess;
}




//review insert


public static boolean reviewInsert(String name,String email,String message,String image) {

	boolean isSuccess = false;

	try {
		con =AdminDBconnect.getConnection();
		stmt = con.createStatement();
		
		

		String sql = "INSERT INTO review values (0,'" + name + "','" + email + "','" + message + "','" + image+ "')";
		int rs = stmt.executeUpdate(sql);

		if (rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}

	return isSuccess;
	}


//review update

public static boolean updatereview(String id, String name,String email,String message,String image) {
	
	
	try {
		con= AdminDBconnect.getConnection();
		stmt=con.createStatement();
		String sql = "update review set  name='"+name+"',email='"+email+"',message='"+message+"',image='"+image+"' where id ='"+id+"'";
		 
		
		int rs = stmt.executeUpdate(sql);
		if(rs > 0) {
			isSuccess = true;
		}
		
		else{
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		
		e.printStackTrace();
		
	}
	
	
return isSuccess;
}

//get review details

public static ArrayList<Review> getreviewdetails() {
	
	ArrayList <Review> addre = new ArrayList <Review>();
	
	try {
		con =AdminDBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * FROM review " ;
		rs =stmt.executeQuery(sql);
		
		if (rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String message = rs.getString(4);
			String image = rs.getString(5);
		
			
			
			
			 
			Review a = new Review(id, name, email, message, image);
			
			addre.add(a);

		} else {
			isSuccess = false;
		}

	} catch (Exception e) {
		e.printStackTrace();

	}

	return addre;
		
}



//review delete

public static boolean detelereview(String id) {

	int adminid = Integer.parseInt(id);

	try {
		con =AdminDBconnect.getConnection();
		stmt = con.createStatement();

		String sql = "delete from review where id ='" + id+ "'";
		int rs = stmt.executeUpdate(sql);

		if (rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

	return isSuccess;
}






























































































}




