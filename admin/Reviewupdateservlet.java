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
 * Servlet implementation class Reviewupdateservlet
 */
@WebServlet("/Reviewupdateservlet")
public class Reviewupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
boolean isTrue;
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String image = request.getParameter("image");
		
		
		isTrue = AdminDBUtil.updatereview(id, name, email, message, image);
		if(isTrue == true) {
			AdminDBUtil pay = new AdminDBUtil(); // create util object
			ArrayList<Review> re = pay.getreviewdetails(); // get parameters to arratlist
			request.setAttribute("re", re);
			RequestDispatcher disp = request.getRequestDispatcher("reviewread.jsp");
			disp.forward(request, response);
			 
		}
		else {
			RequestDispatcher disp = request.getRequestDispatcher("customerprofile.jsp");
    		disp.forward(request,response);
			
		}
		
	
		
		
		
	}

}
