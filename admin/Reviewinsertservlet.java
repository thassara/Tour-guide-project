package com.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reviewinsertservlet
 */
@WebServlet("/Reviewinsertservlet")
public class Reviewinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String image = request.getParameter("images");
		
		
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.reviewInsert(name, email, message, image);
		
		if(isTrue == true) {
			AdminDBUtil pay = new AdminDBUtil(); // create util object
			ArrayList<Review> re = pay.getreviewdetails(); // get parameters to arratlist
			request.setAttribute("re", re);
			RequestDispatcher disp = request.getRequestDispatcher("reviewread.jsp");
			disp.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("NewFile.jsp");
			dis2.forward(request, response);
		}
	
		
		
	}

}
