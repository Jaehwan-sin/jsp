package customer.controller.notice;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import customer.contoller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeRegProcController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegProcController");
		// path 만들기
		String path = "customer/upload";
		ServletContext ctx = request.getServletContext();
		path = ctx.getRealPath(path);
		System.out.println("real path : "+path);
		
		// multipart형식으로 데이터 받기
		// DefaultFileRenamePolicy은 같은 이름이 들어올 경우 이름이 바뀌어서 저장한다.
		MultipartRequest req = new MultipartRequest(request,path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String file = req.getFilesystemName("file");
		
		System.out.println(title+":"+file);
		
		Notice n = new Notice();
		n.setTitle(title);
		n.setContent(content);
		n.setFilesrc(file);
		
		NoticeDao dao = new NoticeDao();
		dao.write(n);
		
		/* 목록으로 이동 */
		response.sendRedirect("notice.jsp");
		// request.getRequestDispatcher("noticeReg.jsp").forward(request,response);

	}
}
