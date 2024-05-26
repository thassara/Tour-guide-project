package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Customerloginservlet
 */
@WebServlet("/Customerloginservlet")
public class Customerloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("uid");
		String Password = request.getParameter("pass");
		
		try {
			List<Customer> cus=CustomerDbUtil.validate(username, Password); 
			request.setAttribute("cus", cus);

		}catch(Exception e)
		{  
			e.printStackTrace();
		}
			RequestDispatcher dis = request.getRequestDispatcher("CustomerProfile.jsp");
		dis.forward(request, response);
		
		
	}

}
