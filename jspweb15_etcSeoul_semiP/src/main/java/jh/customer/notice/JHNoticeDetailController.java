package jh.customer.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;
import jh.customer.dao.JHNoticeDao;
import jh.customer.vo.JHNotice;

public class JHNoticeDetailController implements Controller {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHNoticeDetailController");
		
		String jhno = request.getParameter("c");
		String jhhit = request.getParameter("h");
		System.out.println("jhhit : "+jhhit);
		
		JHNoticeDao dao = new JHNoticeDao();
		JHNotice j = dao.getNotice(jhno,jhhit);
		
		request.setAttribute("j", j);
		request.getRequestDispatcher("/WEB-INF/View/customer/jhnoticeDetail.jsp").forward(request, response);
	}

}
