package jh.customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;
import jh.customer.dao.JHMemberDao;
import jh.customer.vo.JHMember;

public class JHLoginProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHLoginProcController");
		
		request.setCharacterEncoding("utf-8");
		String jhid = request.getParameter("id");
		String jhpw = request.getParameter("password");
		
		JHMemberDao dao = new JHMemberDao();
		JHMember jm = dao.getJHMember(jhid);
		
		if (jm==null) {
			request.setAttribute("error", "아이디가 일치하지 않습니다.");
			request.getRequestDispatcher("jhloginForm.jsp").forward(request, response);
		} else if (!jm.getPwd().equals(jhpw)) {
			request.setAttribute("error", "비밀번호가 일치하지 않습니다.");
			request.getRequestDispatcher("jhloginForm.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("jhid", jhid);
			response.sendRedirect("../customer/jhnotice.do");
		}
		
		
		
	}

}
