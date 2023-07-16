package jh.customer.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;
import jh.customer.dao.JHNoticeDao;

public class JHDelProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHNoticeDelProcController");
		
		
		String jhno = request.getParameter("c");
		
		JHNoticeDao dao = new JHNoticeDao();
		dao.delete(jhno);
		
		response.sendRedirect("/src/main/webapp/WEB-INF/View/customer/jhnotice.jsp");
	
	}

}
