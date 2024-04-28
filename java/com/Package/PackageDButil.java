package com.Package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

public class PackageDButil {

	private static boolean isSuccess;
	// database connection
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	// login
		public static boolean validate(String username, String password) {

			// Validation
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM package_manager WHERE username='" +username+ "' AND password='" +password+ "';";

				 rs = stmt.executeQuery(sql);
				 
				if (rs.next()) {
					isSuccess = true;
					

				}else {
					isSuccess =false;
				}

			} catch (Exception e) {
				e.printStackTrace();

			}

			return isSuccess;
		}
	//insert data	
	public static boolean Packageinsert(String name, String price, String Duration, String image, String details) {

		boolean isSuccess = false;

		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT INTO package values (0,'" + name + "','" + price + "','" + Duration + "','" + details
					+ "','" + image + "')";
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

	//read data
	public static ArrayList<Package> getpackageDetails() {

		ArrayList<Package> rpack = new ArrayList<Package>();

		try {

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from package";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {   // data set to package class 
				Package p = new Package();

				p.setIdpackage(rs.getInt("idpackage"));
				p.setName(rs.getString("name"));
				p.setPrice(rs.getInt("price"));
				p.setDuration(rs.getInt("Duration"));
				p.setDetails(rs.getString("details"));
				p.setImage(rs.getString("image"));

				rpack.add(p);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return rpack;

	}

//	update data
	public static boolean updatePackage(String idpackage, String name, String price, String duration, String details,
			String images) {

		int id = Integer.parseInt(idpackage);
		int Price = Integer.parseInt(price);
		int dura = Integer.parseInt(duration);
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			// sql query
			String sql = "update package set name ='" + name + "',price ='" + Price + "',Duration='" + dura
					+ "',details='" + details + "',image='" + images + "' where idpackage = '" + id + "';";

			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {

		}

		return isSuccess;
	}

	//delete data
	public static boolean detelePackage(String idpackage) {

		int convID = Integer.parseInt(idpackage);

		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();

			String sql = "delete from package where idpackage ='" + convID + "'";
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
	
	//discount insert
	public static boolean Discountinsert( String rate, String dcode, String date, String package_type) {

		boolean isSuccess = false;

		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT INTO discount values (0,'" + rate + "','" +dcode+ "','"+ date+"','" +package_type+ "')";
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
