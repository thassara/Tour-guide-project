package com.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Adminupdateservlet
 */
@WebServlet("/Adminupdateservlet")
public class Adminupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		
		boolean isTrue;
		
		String adminid = request.getParameter("adminid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String job = request.getParameter("job");
		String skills = request.getParameter("skill");
		String images = request.getParameter("image");
		
		isTrue = AdminDBUtil.updateadminprofile(adminid, name, email, address, password, job, skills, images);
		if(isTrue == true) {
			AdminDBUtil admin = new AdminDBUtil();
			ArrayList<Admin> ad = admin.getadmindetails(adminid);
			request.setAttribute("ad", ad);
			
			RequestDispatcher disp1 = request.getRequestDispatcher("adminprofile.jsp");
    		disp1.forward(request,response);
			 
		}
		else {
			RequestDispatcher disp = request.getRequestDispatcher("customerprofile.jsp");
    		disp.forward(request,response);
			
		}
		
	}

}
