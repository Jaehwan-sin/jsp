package jh.customer.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.notice.JHEditController;
import jh.customer.notice.JHEditProcController;
import jh.customer.notice.JHNoticeController;
import jh.customer.notice.JHNoticeDetailController;

public class MyDispatcher extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("http신호");
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
		String conPath = request.getContextPath();
		System.out.println("ContextPath : "+conPath);
		String com = uri.substring(conPath.length());
		System.out.println("com : "+com);
		
		Controller controller = null;
		
		try {
			if (com.equals("/customer/jhnoticeDetail.do")) {
				controller = new JHNoticeDetailController();
			} else if (com.equals("/customer/jhnoticeEdit.do")) {
				controller = new JHEditController();
			} else if (com.equals("/customer/jhnoticeEditProc.do")) {
				controller = new JHEditProcController();
			}
				controller.execute(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
