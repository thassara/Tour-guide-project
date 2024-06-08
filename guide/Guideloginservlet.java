package com.guide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Guideloginservlet
 */
@WebServlet("/Guideloginservlet")
public class Guideloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
			List<Guide> gui= Guidedbutil.validate(username, password); 
			request.setAttribute("gui", gui);
			
		}
		catch(Exception e)
		{  
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("guideProfile.jsp");
		dis.forward(request, response);
		
		
	}

}
