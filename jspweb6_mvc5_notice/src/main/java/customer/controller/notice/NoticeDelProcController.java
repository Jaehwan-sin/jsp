package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.contoller.Controller;
import customer.dao.NoticeDao;

public class NoticeDelProcController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDelProcController");
		
		String seq = request.getParameter("c");
		
		NoticeDao dao = new NoticeDao();
		int del = dao.delete(seq);
		
//		if(del>0){
//			response.sendRedirect("notice.jsp");
//		} else
//			out.write("삭제오류");
//		out객체는 jsp객체에 종류인데 java에서 표현이 안 되서 주석처리

	}
}
