package bowling.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import dao.BowlDao;
import vo.Bowl;

public class bowlController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("bowlController");
		
		String field = request.getParameter("f");
		if(field==null || field.equals("")) {
			field="btitle";
		}
		System.out.println("field : "+field);
		
		String query = request.getParameter("q");
		if(query==null) {
			query="";
		}
		System.out.println("query : "+query);
		
		BowlDao dao = new BowlDao();
		List<Bowl> list = dao.bowlselAll(field,query);
		
		request.setAttribute("list", list);
		request.setAttribute("query", query);
		request.getRequestDispatcher("bowlboard.jsp").forward(request, response);
		
	}

}
