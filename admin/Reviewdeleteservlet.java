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
 * Servlet implementation class Reviewdeleteservlet
 */
@WebServlet("/Reviewdeleteservlet")
public class Reviewdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("rid"); // get parameter to jsp page

		boolean istrue;
		istrue = AdminDBUtil.detelereview(id);// send the util function

		if (istrue == true) {
			AdminDBUtil pay = new AdminDBUtil(); // create util object
			ArrayList<Review> re = pay.getreviewdetails(); // get parameters to arratlist
			request.setAttribute("re", re);
			RequestDispatcher disp = request.getRequestDispatcher("reviewread.jsp");
			disp.forward(request, response);
		} else {

			RequestDispatcher dis = request.getRequestDispatcher("home.html");
			dis.forward(request,response);
		}
		
		
		

		
		
	}

				
		
	}


