package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingUpdateServlet
 */
@WebServlet("/BookingUpdateServlet")
public class BookingUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bid = request.getParameter("bid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String guest = request.getParameter("guest");
		String pssono = request.getParameter("pssono");
		
		

		boolean isTrue = BookingDButil.updatePayment(bid, name, email, guest, pssono); // send data to util function
		if(isTrue == true) { 
			
			
			RequestDispatcher dis = request.getRequestDispatcher("home1.jsp");
			dis.forward(request, response);
		}
		else {
			  RequestDispatcher dis2 = request.getRequestDispatcher("packageError.html");
	            dis2.forward(request, response);
		}	}

}
