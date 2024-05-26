package com.booking;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingInsertServlet
 */
@WebServlet("/BookingInsertServlet")
public class BookingInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//catch the parameters from jsp page
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String Pnumber = request.getParameter("Pnumber");
        String gnum = request.getParameter("gnum");
      

        boolean isSuccess;

        isSuccess =BookingDButil.Paymentinsert(name, email, gnum, Pnumber) ;//parameters send the util function

        if (isSuccess ) {  // function redirect with data jsp page
//        	BookingDButil pack1 =new BookingDButil();
//    		ArrayList<Package> pack = pack1.getpackageDetails();
//    		request.setAttribute("pack", pack);
    		RequestDispatcher disp = request.getRequestDispatcher("home1.jsp");
    		disp.forward(request, response);
    		
    	
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("packageError.html");
            dis2.forward(request, response);
        }
	}

}
