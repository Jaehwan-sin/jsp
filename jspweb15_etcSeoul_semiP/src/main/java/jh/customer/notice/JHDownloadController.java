package jh.customer.notice;

import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jh.customer.controller.Controller;

public class JHDownloadController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JHDownloadController");
		
		String path = request.getParameter("p"); 
		String fname = request.getParameter("f");
		String urlpath = path+fname;
		String realPath = request.getServletContext().getRealPath(urlpath);
		System.out.println("realPath : "+realPath);
		
		response.setHeader("Content-Disposition", "attachment;filename="+new String(fname.getBytes(),"ISO8859_1"));
		
		// io처리(입출력처리)
		FileInputStream fin = new FileInputStream(realPath);
		ServletOutputStream sout = response.getOutputStream();
		
		byte[] buf = new byte[1024];
		int size = 0;
		while ((size=fin.read(buf,0,1024))!=-1) {
			sout.write(buf,0,size);
		}
			fin.close();
			sout.close();
		/* request.getRequestDispatcher("notice.jsp").forward(request, response); */
		
		
	}

}
