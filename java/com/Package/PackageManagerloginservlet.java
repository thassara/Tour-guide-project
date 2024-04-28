package com.Package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PackageManagerloginservlet
 */
@WebServlet("/PackageManagerloginservlet")
public class PackageManagerloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter(); // assign the js 
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");  // get parameters to jsp page
		String password = request.getParameter("pass");
		
		boolean isTrue ;
		isTrue=PackageDButil.validate(username, password);  // send data util function 

		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("control_page.html");
			dis.forward(request, response);
		}else
		{  // if error indicate the error thought js
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username and password is incorrect');");
			out.println("location='PackageLogin.jsp'"); // redirect location
			out.println("</script>");
			
		}
	}

}
