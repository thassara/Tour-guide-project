package com.Package;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Package_updateServlet")
public class Package_updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean isTrue;       //catch the parameters thought jsp page
		
		String idpackage = request.getParameter("idpackage");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String duration = request.getParameter("duration");
		String details = request.getParameter("details");
		String images = request.getParameter("images");

		
		
		
		isTrue = PackageDButil.updatePackage(idpackage, name, price, duration, details, images);  // send data to util function
		if(isTrue == true) { 
			PackageDButil pack1 =new PackageDButil();
    		ArrayList<Package> pack = pack1.getpackageDetails();
    		request.setAttribute("pack", pack);
    		RequestDispatcher disp = request.getRequestDispatcher("Packages.jsp");
    		disp.forward(request, response);
    		 response.sendRedirect("package_read.jsp");
			
			RequestDispatcher dis = request.getRequestDispatcher("Packages.jsp");
			dis.forward(request, response);
		}
		else {
			  RequestDispatcher dis2 = request.getRequestDispatcher("packageError.html");
	            dis2.forward(request, response);
		}
		
		
	}

}
