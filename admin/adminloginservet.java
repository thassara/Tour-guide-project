package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminloginservet
 */
@WebServlet("/adminloginservet")
public class adminloginservet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		try {
			List<Admin> ad=AdminDBUtil.validate(username, password);
			request.setAttribute("ad", ad);
			
		}catch(Exception e)
		{  
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("adminprofile.jsp");
		dis.forward(request, response);
		
	}

}
