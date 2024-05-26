package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admindeleteservlet
 */
@WebServlet("/Admindeleteservlet")
public class Admindeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("aid"); // get parameter to jsp page

		boolean istrue;
		istrue = AdminDBUtil.deteleadminprofile(id); // send the util function

		if (istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminregister.jsp");
			dis.forward(request, response);
		} else {

			RequestDispatcher dis = request.getRequestDispatcher("home.html");
			dis.forward(request,response);
		}
		
		
		

		
		
	}

}
