package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminInsertservlet
 */
@WebServlet("/AdminInsertservlet")
public class AdminInsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String job = request.getParameter("job");
		String skills = request.getParameter("skills");
		String images = request.getParameter("images");
		
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.adminInsert(Name, email, address, password, job, skills, images);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adlogin.jsp");
			dis.forward(request, response);;
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("NewFile.jsp");
			dis2.forward(request, response);
		}
		
	}
	}


