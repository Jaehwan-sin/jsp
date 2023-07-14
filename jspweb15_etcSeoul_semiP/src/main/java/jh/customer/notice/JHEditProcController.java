package jh.customer.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;
import jh.customer.dao.JHNoticeDao;
import jh.customer.vo.JHNotice;

public class JHEditProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHEditProcController");
		
		request.setCharacterEncoding("utf-8"); 
		String jhno = request.getParameter("c"); 
		String jhtitle = request.getParameter("jhtitle");
		String jhcontent = request.getParameter("jhcontent");
		  
		JHNotice j = new JHNotice(); 
		j.setJhtitle(jhtitle); 
		j.setJhcontent(jhcontent);
		j.setJhno(jhno);
		
		JHNoticeDao dao = new JHNoticeDao(); 
		dao.edit(jhno,jhtitle,jhcontent);
		
		request.setAttribute("j", j);
		request.getRequestDispatcher("jhnoticeDetail.jsp").forward(request, response);
		
	}
	
}
