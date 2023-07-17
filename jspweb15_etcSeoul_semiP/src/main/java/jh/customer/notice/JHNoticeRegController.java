package jh.customer.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;

public class JHNoticeRegController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHNoticeRegController");
		
		request.getRequestDispatcher("/WEB-INF/View/customer/jhnoticeReg.jsp").forward(request,response);
		
		
	}

}
