package bowling.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;

public class loginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LoginController");
		
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		
	}
	
}
