package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;
import vo.Bowl;

public class bowlEditController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BowlEditController");
		
		String bno =  request.getParameter("c");
		BowlDao dao = new BowlDao();
		Bowl b = dao.getboard(bno); 
		
		request.setAttribute("b", b);//request에 n이라는 이름으로 n을 보내겠다
		request.getRequestDispatcher("bowlEdit.jsp").forward(request, response);

	}

}
