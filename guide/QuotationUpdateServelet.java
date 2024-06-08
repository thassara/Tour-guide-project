package com.guide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QuotationUpdateServelet")
public class QuotationUpdateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean isTrue;
		String qid = request.getParameter("qid");
		String cname = request.getParameter("cname");
		String dnum = request.getParameter("dnum");
		String gnum = request.getParameter("gnum");
		String atime = request.getParameter("atime");
		String email = request.getParameter("email");

		isTrue = Guidedbutil.updateQoutation(qid,cname, dnum, gnum, atime, email);
		if (isTrue == true) {
			
			List <Quotation> quo = Guidedbutil.getQuotationDetails(qid);
			request.setAttribute("quodetails", quo);

			RequestDispatcher disp6 = request.getRequestDispatcher("quotation.jsp");
			disp6.forward(request, response);

		} else {
			
			List <Quotation> quo = Guidedbutil.getQuotationDetails(qid);
			request.setAttribute("quodetails", quo);

			RequestDispatcher disp = request.getRequestDispatcher("unsucces.jsp");
			disp.forward(request, response);

		}

	}

}
