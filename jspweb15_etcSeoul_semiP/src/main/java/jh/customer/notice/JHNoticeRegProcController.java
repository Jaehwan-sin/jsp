package jh.customer.notice;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jh.customer.controller.Controller;
import jh.customer.dao.JHNoticeDao;
import jh.customer.vo.JHNotice;

public class JHNoticeRegProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHNoticeRegProcController");
		
		String path = "customer/jhupload";
		ServletContext ctx = request.getServletContext();
		path = ctx.getRealPath(path);
		System.out.println("real path : "+path);
		path = "C:\\Users\\woghk\\git\\jsp\\jsp\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\jspweb15_etcSeoul_semiP\\customer\\jhupload";
		
		MultipartRequest req = new MultipartRequest(request,path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
		
		String jhtitle = req.getParameter("jhtitle");
		String jhcontent = req.getParameter("jhcontent");
		String jhfile = req.getFilesystemName("jhfile");
		String jhid = req.getParameter("jhid");
		
		System.out.println("jhtitle : "+jhtitle+"  "+"jhfile : "+jhfile);
		System.out.println("jhid : "+jhid);
		
		JHNotice j = new JHNotice();
		j.setJhwriter(jhid);
		j.setJhtitle(jhtitle);
		j.setJhcontent(jhcontent);
		j.setJhfile(jhfile);
		
		JHNoticeDao dao = new JHNoticeDao();
		dao.insert(j);
		
		response.sendRedirect("/WEB-INF/View/customer/jhnotice.jsp");
	}

}
