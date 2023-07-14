package jh.customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;

public class JHLogoutProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHLogoutProcController");
		
		request.getSession().invalidate();
		response.sendRedirect("../customer/jhnotice.jsp");
	}

}
