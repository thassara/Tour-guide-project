package com.guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GquotationInsertServelet
 */
@WebServlet("/GquotationInsertServelet")
public class GquotationInsertServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Cname = request.getParameter("cname");
		String Dnum = request.getParameter("dnum");
		String Gnum = request.getParameter("gnum");
		String Atime = request.getParameter("atime");
		String Email = request.getParameter("email");
		
		
		boolean isTrue;
		
		isTrue = Guidedbutil.quotationInsert(Cname, Dnum, Gnum, Atime, Email);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("verifyEmail.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
