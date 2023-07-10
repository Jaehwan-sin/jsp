package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;
import vo.Bowl;

public class bowlDelController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("bowlDelController");
		
		String bno = request.getParameter("c");
		BowlDao dao = new BowlDao();
		Bowl b = dao.getboard(bno);
		
		request.setAttribute("b", b);
		request.getRequestDispatcher("bowlDetail.jsp").forward(request, response);
	}
}
