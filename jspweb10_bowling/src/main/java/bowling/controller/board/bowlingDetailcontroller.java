package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;
import vo.Bowl;

public class bowlingDetailcontroller implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("bowlDetailController");
		
		String bno = request.getParameter("c");
		String hit = request.getParameter("h");
		System.out.println("hit : "+hit);
		
		BowlDao dao = new BowlDao(); 
		Bowl b = dao.getNotice(bno,hit);
		
		request.setAttribute("b", b);
		request.getRequestDispatcher("bowlDetail.jsp").forward(request, response);
	}
	
}