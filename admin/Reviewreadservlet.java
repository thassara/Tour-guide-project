package com.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.Booking;
import com.booking.BookingDButil;

/**
 * Servlet implementation class Reviewreadservlet
 */
@WebServlet("/Reviewreadservlet")
public class Reviewreadservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDBUtil pay = new AdminDBUtil(); // create util object
		ArrayList<Review> re = pay.getreviewdetails(); // get parameters to arratlist
		request.setAttribute("re", re);
		RequestDispatcher disp = request.getRequestDispatcher("reviewread.jsp");
		disp.forward(request, response);
		
		
		
		
		
	}

}
