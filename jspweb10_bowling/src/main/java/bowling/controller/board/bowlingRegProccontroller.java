package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;
import vo.Bowl;

public class bowlingRegProccontroller implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("bowlingRegProcController");
		
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Bowl b = new Bowl();
		b.setBtitle(title);
		b.setBcontent(content); 
		
		BowlDao dao = new BowlDao();
		dao.write(b);
		
		response.sendRedirect("bowlboard.jsp");
		
	}
	
}
