package com.Package;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PackageDeleteServlet")
public class PackageDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("idpackage");  // get parameter to jsp page
		
		boolean istrue;
		 istrue = PackageDButil.detelePackage(id);   //send the util function
		 
		 if(istrue == true) {
			 RequestDispatcher dis = request.getRequestDispatcher("control_page.html");
			 dis.forward(request, response);
		 }else {
			 
			 RequestDispatcher dis = request.getRequestDispatcher("home1.html");
			 dis.forward(request, response);
		 }
	}

}
