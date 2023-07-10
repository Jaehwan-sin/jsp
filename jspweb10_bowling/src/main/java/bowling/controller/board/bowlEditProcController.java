package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;
import vo.Bowl;

public class bowlEditProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("bowlEditProcController");
		
		request.setCharacterEncoding("utf-8");
		String bno = request.getParameter("c");
		String title = request.getParameter("btitle");
		String content = request.getParameter("bcontent");
		
		Bowl b = new Bowl();
		b.setBtitle(title);
		b.setBcontent(content);
		b.setBno(bno);
		
		BowlDao dao = new BowlDao();
		dao.update(title,content,bno);
		
		request.setAttribute("b", b);
		request.getRequestDispatcher("bowlDetail.jsp").forward(request, response);
		
	}

}
