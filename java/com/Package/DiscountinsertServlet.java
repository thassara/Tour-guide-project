package com.Package;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DiscountinsertServlet
 */
@WebServlet("/DiscountinsertServlet")
public class DiscountinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 	//catch the parameters from jsp page
        String rate = request.getParameter("rate");
        String code = request.getParameter("code");
        String date = request.getParameter("date");
        String package_type = request.getParameter("package_type");
       
        
       

        boolean isSuccess;

        isSuccess = PackageDButil.Discountinsert(rate, code, date, package_type); //parameters send the util function

        if (isSuccess == true) {  // function redirect with data jsp page
        	
    		RequestDispatcher disp = request.getRequestDispatcher("control_page.html");
    		disp.forward(request, response);
    		 
    		 
           
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("packageError.html");
            dis2.forward(request, response);
        }
	}

}
