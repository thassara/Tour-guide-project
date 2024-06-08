package com.guide;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import com.mysql.fabric.xmlrpc.base.Array;

public class Guidedbutil {

	private static boolean isSuccess;
	// database connection
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// login and read date
	public static List<Guide> validate (String username, String password){
		
		ArrayList<Guide> gui = new ArrayList<Guide>();
		//validation
		try {
				con = Guidedbconnector.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM guide_details WHERE email= '"+username+"' AND Password= '"+password+"';";
			
				rs = stmt.executeQuery(sql);

				if (rs.next()) {
					
					int gid = rs.getInt(1);
					String gname = rs.getString(2);
					int mobile = rs.getInt(3);
					String email = rs.getString(4);
					String gender = rs.getString(5);
					int price = rs.getInt(6);
					String Password = rs.getString(7);
					String city = rs.getString(8);
					String languages = rs.getString(9);
					String activities = rs.getString(10);
					String image = rs.getString(11);

					Guide c = new Guide(gid, gname, mobile, email, gender, price, Password, city, languages, activities, image);
							gui.add(c);

				} else {
					isSuccess = false;
				}

			} catch (Exception e) {
				e.printStackTrace();

			}

			return gui;
		}
//Guide Insert
	
	public static boolean guideInsert(String city, String name, String cost, String lng, String gender, String act,
			String emailaddress, String mobilenumber, String passwords, String image) {

		boolean isSuccess = false;

		try {
			con = Guidedbconnector.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT INTO guide_details values (0,'" + name + "','" + mobilenumber + "','" + emailaddress
					+ "','" + gender + "','" + cost + "','" + passwords + "','" + city + "','" + lng + "','" + act+ "','" + image +"')";
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
	
//update guide
	public static boolean updateGuide(String id,String city,String name,String cost,String lng,String gender,String act,String email,String mobile,String img,String pwd) {
		
		try {
			con = Guidedbconnector.getConnection();
			stmt = con.createStatement();
			
			//sql query
			
			String sql = "UPDATE guide_details SET gname = '"+name+"', mobile = '"+mobile+"', email = '"+email+"', gender = '"+gender+"', price = '"+cost+"', Password = '"+pwd+"', city = '"+city+"', languages = '"+lng+"', activities = '"+act+"', image = '"+img+"' WHERE gid = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
public static ArrayList<Guide> getGuideDetails (String Id){
		
	    int convertedID = Integer.parseInt(Id);
		ArrayList<Guide> gui = new ArrayList<Guide>();
		//validation
		try {
				con = Guidedbconnector.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM guide_details WHERE gid = '"+ convertedID +"'";
			
				rs = stmt.executeQuery(sql);

				if (rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					int mobile = rs.getInt(3);
					String email = rs.getString(4);
					String gender = rs.getString(5);
					int price = rs.getInt(6);
					String Password = rs.getString(7);
					String city = rs.getString(8);
					String languages = rs.getString(9);
					String activities = rs.getString(10);
					String image = rs.getString(11);

					Guide c = new Guide(id, name, mobile, email, gender, price, Password, city, languages, activities, image);
							gui.add(c);

				} else {
					isSuccess = false;
				}

			} catch (Exception e) {
				e.printStackTrace();

			}

			return gui;
		}


//Guide Profile Delete

public static boolean guideDelete(String Id) {
	
	int conid =  Integer.parseInt(Id);
	
	
	try {
		
		con = Guidedbconnector.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from guide_details where gid = '"+conid+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}catch (Exception e) {
		
		e.printStackTrace();
		
	}
	
	return isSuccess;
}



//Quotation Insert

	public static boolean quotationInsert(String cname, String dnum, String gnum, String atime, String email) {

		boolean isSuccess = false;

		try {
			con = Guidedbconnector.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT INTO quotation values (0,'" + cname + "','" + dnum + "','" + gnum
					+ "','" + atime + "','" + email +"')";
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




//Quotation read

public static List<Quotation> quovalidate (String email){
	
	ArrayList<Quotation> quo = new ArrayList<Quotation>();
	//validation
	try {
			con = Guidedbconnector.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM quotation WHERE email= '"+email+"'";
		
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				
				int qid = rs.getInt(1);
				String cname = rs.getString(2);
				int dnum = rs.getInt(3);
				int gnum = rs.getInt(4);
				String atime = rs.getString(5);
				String mail = rs.getString(6);
				

				Quotation q = new Quotation(qid, cname, dnum, gnum, atime, mail);
						quo.add(q);

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return quo;
	}


//Quotation Update

public static boolean updateQoutation(String qid,String cname,String dnum,String gnum,String atime,String email) {
	
	try {
		con = Guidedbconnector.getConnection();
		stmt = con.createStatement();
		
		//sql query
		
		String sql = "update quotation set cname='"+cname+"',dnum='"+dnum+"',gnum='"+gnum+"',atime='"+atime+"' where qid='"+qid+"'";
		
		int rs = stmt.executeUpdate(sql);
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
	}

//update data retrieve

public static ArrayList<Quotation> getQuotationDetails (String qid){
	
	int conqid =  Integer.parseInt(qid);
	
	ArrayList<Quotation> quo = new ArrayList<Quotation>();
	//validation
	try {
			con = Guidedbconnector.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM quotation WHERE qid = '"+ conqid +"'";
		
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int id = rs.getInt(1);
				String cname = rs.getString(2);
				int dnum = rs.getInt(3);
				int gnum = rs.getInt(4);
				String atime = rs.getString(5);
				String email = rs.getString(6);

				Quotation q = new Quotation(id, cname, dnum, gnum, atime, email);
						quo.add(q);

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return quo;
	}


//Quotation delete

public static boolean quotationDelete(String qid) {
	
	int conqid =  Integer.parseInt(qid);
	
	
	try {
		
		con = Guidedbconnector.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from quotation where qid = '"+conqid+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}catch (Exception e) {
		
		e.printStackTrace();
		
	}
	
	return isSuccess;
}


}




