package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;

import com.mysql.jdbc.PreparedStatement.ParseInfo;

//login and read data
public class CustomerDbUtil {

	private static boolean isSuccess;
	// database connection
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean customerinsert(String name, String age, String email, String address, String psw,
			String images, String gender) {

		boolean isSuccess = false;

		try {
			con = CustomerDbConnector.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT INTO  customerdetails values (0,'" + name + "','" + age + "','" + email + "','"
					+ address + "','" + psw + "','" + images + "','" + gender + "')";
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

	// insert data

	public static List<Customer> validate(String username, String password) {

		ArrayList<Customer> cus = new ArrayList<Customer>();
//validation
		try {

			con = CustomerDbConnector.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM customerdetails WHERE Cemail='" + username + "' AND Cpassword = '" + password
					+ "';";

			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int Cid = rs.getInt(1);
				String Cname = rs.getString(2);
				int Cage = rs.getInt(3);
				String Cemail = rs.getString(4);
				String Caddress = rs.getString(5);
				String Cpassword = rs.getString(6);
				String Cphoto = rs.getString(7);
				String Cgender = rs.getString(8);

				Customer c = new Customer(Cid, Cname, Cage, Cemail, Caddress, Cpassword, Cphoto, Cgender);
				cus.add(c);

			} else {

				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return cus;
	}

// update data
	public static boolean UpdateCustomer(String id, String Name, String Age, String Email, String Address,String Gender, String Img)// you can add any parameter name
	{

		int Conid = Integer.parseInt(id);
		try {
			con = CustomerDbConnector.getConnection();
			stmt = con.createStatement();

			// sql query parameter get from database
			String sql = "UPDATE customerdetails SET Cname ='"+Name+"', Cage='"+Age+"',Cemail='"+Email+"',Caddress='"+Address+"',Cphoto='"+Img+"',Cgender='"+Gender+"' WHERE cid ='"+Conid+"' ";

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

	public static ArrayList<Customer> GetCustomerDetails(String id) {

		int convertedid = Integer.parseInt(id);
		ArrayList<Customer> cus = new ArrayList<Customer>();
//validation
		try {

			con = CustomerDbConnector.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM customerdetails WHERE Cid='" + convertedid + "'";

			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int Cid = rs.getInt(1);
				String Cname = rs.getString(2);
				int Cage = rs.getInt(3);
				String Cemail = rs.getString(4);
				String Caddress = rs.getString(5);
				String Cpassword = rs.getString(6);
				String Cphoto = rs.getString(7);
				String Cgender = rs.getString(8);

				Customer c = new Customer(Cid, Cname, Cage, Cemail, Caddress, Cpassword, Cphoto, Cgender);
				cus.add(c);

			} else {

				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return cus;
	}

}
