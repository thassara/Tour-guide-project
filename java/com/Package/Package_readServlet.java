package com.Package;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Package_readServlet")
public class Package_readServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PackageDButil pack1 =new PackageDButil();  // create util object
		ArrayList<Package> pack = pack1.getpackageDetails(); //get parameters to arratlist
		request.setAttribute("pack", pack);
		RequestDispatcher disp = request.getRequestDispatcher("Packages.jsp");
		disp.forward(request, response);
		

		
	}

}
