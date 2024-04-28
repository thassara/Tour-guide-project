package com.Package;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/packDeleteReader")
public class packDeleteReader extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PackageDButil pack1 = new PackageDButil();
		ArrayList<Package> pack = pack1.getpackageDetails();
		request.setAttribute("pack", pack);
	
		RequestDispatcher disp1 = request.getRequestDispatcher("package_delete.jsp");
		disp1.forward(request, response);
	}

}
