package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;

public class bowlDelProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BowlDelProcController");
		
		String bno = request.getParameter("c");
		
		BowlDao dao = new BowlDao();
		int del = dao.delete(bno);
		
	}

}
