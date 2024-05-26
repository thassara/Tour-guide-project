package com.booking;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingReadservlet
 */
@WebServlet("/BookingReadservlet")
public class BookingReadservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookingDButil pay = new BookingDButil(); // create util object
		ArrayList<Booking> book = pay.getBookingDetails(); // get parameters to arratlist
		request.setAttribute("book", book);
		RequestDispatcher disp = request.getRequestDispatcher("table.jsp");
		disp.forward(request, response);
	}

}
