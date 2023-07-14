package jh.customer.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;
import jh.customer.dao.JHNoticeDao;
import jh.customer.vo.JHNotice;

public class JHNoticeController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHNoticeController");
		
		String field = request.getParameter("f");
		if (field==null || field.equals("")) {
			field="jhtitle";
		}
		System.out.println("field : "+field);
		
		String query = request.getParameter("q");
		if (query==null) {
			query="";
		}
		System.out.println("query : "+query);
		
		JHNoticeDao dao = new JHNoticeDao();
		List<JHNotice> list = dao.jhnoticeAll(field,query);
		
		request.setAttribute("list", list);
		request.setAttribute("query", query);
		request.getRequestDispatcher("jhnotice.jsp").forward(request, response);
		// response.sendRedirect("jhnotice.jsp");
	}

}
