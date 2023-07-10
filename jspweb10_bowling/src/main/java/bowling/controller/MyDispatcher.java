package bowling.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.board.bowlDelProcController;
import bowling.controller.board.bowlDetailController;
import bowling.controller.board.bowlEditController;
import bowling.controller.board.bowlEditProcController;
import bowling.controller.board.bowlRegController;
import bowling.controller.board.bowlingDetailcontroller;
import bowling.controller.board.bowlingRegProccontroller;

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
		
		// NoticeDetailController controller1 = new NoticeDetailController();
		// NoticeEditController controller2 = new NoticeEditController();
		Controller controller = null;
		
		try {// 신호에 따라 생성되는 객체가 달라진다.
			if (com.equals("/bowling/bowlDetail.do")) {
				controller = new bowlingDetailcontroller(); // 객체생성
			} else if (com.equals("/bowling/bowlEdit.do")) {
				controller = new bowlEditController(); // 객체생성
			} else if (com.equals("/bowling/bowlEditProc.do")) {
				controller = new bowlEditProcController(); // 객체생성
			} else if (com.equals("/bowling/bowlReg.do")) {
				controller = new bowlRegController(); // 객체생성
			} else if (com.equals("/bowling/bowlRegProc.do")) {
				controller = new bowlingRegProccontroller(); // 객체생성
			} else if (com.equals("/bowling/bowlDelProc.do")) {
				controller = new bowlDelProcController(); // 객체생성
			} 
				controller.execute(request, response);// 신호에 따라 생긴 객체를 실행한다.
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
