package com.guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuideInsertServelet
 */
@WebServlet("/GuideInsertServelet")
public class GuideInsertServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String City = request.getParameter("city");
		String Name = request.getParameter("name");
		String Price = request.getParameter("cost");
		String Language = request.getParameter("lng");
		String Gender = request.getParameter("gender");
		String Activities = request.getParameter("act");
		String Mail = request.getParameter("emailaddress");
		String Mobile = request.getParameter("mobilenumber");
		String Password = request.getParameter("passwords");
		String Image = request.getParameter("img");
		
		boolean isTrue;
		
		isTrue = Guidedbutil.guideInsert(City, Name,Price, Language, Gender, Activities, Mail, Mobile, Password, Image);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("guidelogin.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
