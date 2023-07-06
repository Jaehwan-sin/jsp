package customer.contoller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.notice.NoticeDetailController;
import customer.controller.notice.NoticeEditController;

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
		
		NoticeDetailController controller1 = new NoticeDetailController();
		NoticeEditController controller2 = new NoticeEditController();
		
		try {
			if (com.equals("/customer/noticeDetail.do")) {
				controller1.execute(request,response);
			} else if (com.equals("/customer/noticeEdit.do")) {
				controller2.execute(request,response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
