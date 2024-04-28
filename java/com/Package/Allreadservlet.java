package com.Package;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//read data
@WebServlet("/Allreadservlet")
public class Allreadservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PackageDButil pack1 = new PackageDButil();  //create object
		ArrayList<Package> pack = pack1.getpackageDetails();  // util method
		request.setAttribute("pack", pack);
		RequestDispatcher disp = request.getRequestDispatcher("package_update.jsp"); 
	
		disp.forward(request, response);
	}
	

}
