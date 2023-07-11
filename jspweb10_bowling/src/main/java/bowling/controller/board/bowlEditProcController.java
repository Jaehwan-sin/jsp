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
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		Bowl b = new Bowl();
		b.setBtitle(btitle);
		b.setBcontent(bcontent);
		b.setBno(bno);
		
		BowlDao dao = new BowlDao();
		dao.update(btitle,bcontent,bno);
		
		request.setAttribute("b", b);
		request.getRequestDispatcher("bowlDetail.jsp").forward(request, response);
		
	}
}
