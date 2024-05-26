package com.booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookingDButil {
	
	private static boolean isSuccess;
	// database connection
	private static Connection con = null;
	private static java.sql.Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//insert data	
			public static boolean Paymentinsert(String name,String email,String noguests, String pssno ) {

				boolean isSuccess = false;

				try {
					con = BookingDBconnector.getConnection();
					stmt = con.createStatement();

					String sql = "INSERT INTO  booking values (0,'" + name + "','" + email + "','" + noguests + "','" + pssno+"')";
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
			public static ArrayList<Booking> getBookingDetails() {

				ArrayList<Booking> B = new ArrayList<Booking>();

				try {

					con = BookingDBconnector.getConnection();
					stmt = con.createStatement();
					String sql = "select * from booking";
					rs = stmt.executeQuery(sql);

					while (rs.next()) {   // data set to package class 
						
						int bid = rs.getInt(1);
						String name = rs.getString(2);
						String email = rs.getString(3);
						int noguest = rs.getInt(4);
						int passno = rs.getInt(5);
					
						Booking p = new Booking(bid, name, email, passno, noguest);

						B.add(p);

					}
				} catch (Exception e) {
					e.printStackTrace();
				}

				return B;

			}
			
			public static boolean updatePayment(String id, String name,String email,String noguest,String passno) {


				try {
					con = BookingDBconnector.getConnection();
					stmt = con.createStatement();
					// sql query
					String sql = "update booking set name ='" + name + "',email='" + email
							+ "',noguests='" + noguest + "',pssno='" + passno + "' where bid = '" + id + "';";

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
			
			// delete data
			public static boolean detelepayment(String id) {

				int convID = Integer.parseInt(id);

				try {
					con = BookingDBconnector.getConnection();
					stmt = con.createStatement();

					String sql = "delete from booking where bid ='" + convID + "'";
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
