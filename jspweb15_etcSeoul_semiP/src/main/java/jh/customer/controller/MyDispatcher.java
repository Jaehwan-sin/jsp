package jh.customer.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.member.JHLoginController;
import jh.customer.controller.member.JHLoginProcController;
import jh.customer.controller.member.JHLogoutProcController;
import jh.customer.notice.JHDelProcController;
import jh.customer.notice.JHDownloadController;
import jh.customer.notice.JHEditController;
import jh.customer.notice.JHEditProcController;
import jh.customer.notice.JHNoticeController;
import jh.customer.notice.JHNoticeDetailController;
import jh.customer.notice.JHNoticeRegController;
import jh.customer.notice.JHNoticeRegProcController;

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
			if (com.equals("/customer/jhnoticedetail.do")) {
				controller = new JHNoticeDetailController();
			} else if (com.equals("/customer/jhnoticeEdit.do")) {
				controller = new JHEditController();
			} else if (com.equals("/customer/jhnoticeEditProc.do")) {
				controller = new JHEditProcController();
			} else if (com.equals("/customer/jhnoticeReg.do")) {
				controller = new JHNoticeRegController();
			} else if (com.equals("/customer/jhnoticeRegProc.do")) {
				controller = new JHNoticeRegProcController();
			} else if (com.equals("/customer/jhnoticeDelProc.do")) {
				controller = new JHDelProcController();
			} else if (com.equals("/customer/jhnotice.do")) {
				controller = new JHNoticeController();
			} else if (com.equals("/login/login.do")) {
				controller = new JHLoginController();
			} else if (com.equals("/login/jhloginproc.do")) {
				controller = new JHLoginProcController();
			} else if (com.equals("/login/jhlogoutproc.do")) {
				controller = new JHLogoutProcController();
			} else if (com.equals("/joinus/join.do")) {
				controller = new JHLoginProcController();
			} else if (com.equals("/customer/download.do")) {
				controller = new JHDownloadController();
			}
				controller.execute(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
