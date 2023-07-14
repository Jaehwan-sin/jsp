package jh.customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;

public class JHLoginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHLoginController");
		
		request.getRequestDispatcher("jhloginForm.jsp").forward(request, response);
		
	}

}
