package com.Package;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Package_insertServlet")
public class Package_insertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	//catch the parameters from jsp page
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String Duration = request.getParameter("Duration");
        String image = request.getParameter("images");
        String details = request.getParameter("details");

        boolean isSuccess;

        isSuccess = PackageDButil.Packageinsert(name, price, Duration, image, details); //parameters send the util function

        if (isSuccess) {  // function redirect with data jsp page
        	PackageDButil pack1 =new PackageDButil();
    		ArrayList<Package> pack = pack1.getpackageDetails();
    		request.setAttribute("pack", pack);
    		RequestDispatcher disp = request.getRequestDispatcher("Packages.jsp");
    		disp.forward(request, response);
    		 response.sendRedirect("package_read.jsp");
    		 
            RequestDispatcher dis = request.getRequestDispatcher("Packages.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("packageError.html");
            dis2.forward(request, response);
        }
    }

  
}
