package com.guide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuideUpdateServelet
 */
@WebServlet("/GuideUpdateServelet")
public class GuideUpdateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
boolean isTrue;
		
		String Gid = request.getParameter("id");
		String City = request.getParameter("city");
		String Name = request.getParameter("name");
		String Cost = request.getParameter("cost");
		String Lang = request.getParameter("lng");
		String Gender = request.getParameter("gender");
		String Act = request.getParameter("act");
		String Email = request.getParameter("emailaddress");
		String Mobile = request.getParameter("mobilenumber");
		String Img = request.getParameter("img");
		String Pwd = request.getParameter("passwords");
		
		
		isTrue = Guidedbutil.updateGuide(Gid, City, Name, Cost, Lang, Gender, Act, Email, Mobile, Img, Pwd);
		if(isTrue == true) {
			
			List <Guide> gui = Guidedbutil.getGuideDetails(Gid);
			request.setAttribute("gui", gui);
			
			
			RequestDispatcher disp6 = request.getRequestDispatcher("guideProfile.jsp");
    		disp6.forward(request, response);
			
		}
		else {
			
			RequestDispatcher disp = request.getRequestDispatcher("unsucces.jsp");
    		disp.forward(request, response);
			
		}
		
	}

}
