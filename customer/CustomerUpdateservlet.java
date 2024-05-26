package com.customer;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerUpdateservlet
 */
@WebServlet("/CustomerUpdateservlet")
public class CustomerUpdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//catch the parameter thought update customer.jsp page (getparameter)

		String cid = request.getParameter("Cid");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String image = request.getParameter("image");
		boolean isTrue;
		isTrue = CustomerDbUtil.UpdateCustomer(cid, name, age, email, address, gender, image);

		if (isTrue == true) {

			RequestDispatcher disp = request.getRequestDispatcher("CustomerProfile.jsp");
			disp.forward(request, response);

		} else {
			RequestDispatcher disp2 = request.getRequestDispatcher("hb.jsp");
			disp2.forward(request, response);
		}

	}

}
