package bowling.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.board.bowlController;
import bowling.controller.board.bowlDelProcController;
import bowling.controller.board.bowlEditController;
import bowling.controller.board.bowlEditProcController;
import bowling.controller.board.bowlRegController;
import bowling.controller.board.bowlDetailcontroller;
import bowling.controller.board.bowlingRegProccontroller;
import bowling.controller.member.loginController;
import bowling.controller.member.loginProcController;
import bowling.controller.member.logoutProcController;

public class MyDispatcher extends HttpServlet {// java단에서 jsp를 받으려면 httpservlet을 사용해야한다.
	// 1단계, HTTP 요청 받음
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("http신호");
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
		String conPath = request.getContextPath();
		System.out.println("ContextPath : "+conPath);
		String com = uri.substring(conPath.length());
		System.out.println("com : "+com);
		
		Controller controller = null;
		
		try {// 신호에 따라 생성되는 객체가 달라진다.
			if (com.equals("/bowling/bowldetail.do")) {
				controller = new bowlDetailcontroller();
			} else if (com.equals("/bowling/bowlEdit.do")) {
				controller = new bowlEditController(); 
			} else if (com.equals("/bowling/bowlEditProc.do")) {
				controller = new bowlEditProcController();
			} else if (com.equals("/bowling/bowlReg.do")) {
				controller = new bowlRegController();
			} else if (com.equals("/bowling/bowlRegProc.do")) {
				controller = new bowlingRegProccontroller(); 
			} else if (com.equals("/bowling/bowlDelProc.do")) {
				controller = new bowlDelProcController(); 
			} else if (com.equals("/bowling/bowlboard.do")) {
				controller = new bowlController(); 
			} else if (com.equals("/login/login.do")) {
				controller = new loginController(); 
			} else if (com.equals("/login/loginproc.do")) {
				controller = new loginProcController(); 
			} else if (com.equals("/login/logoutproc.do")) {
				controller = new logoutProcController(); 
			} 
				controller.execute(request, response);// 신호에 따라 생긴 객체를 실행한다.
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
