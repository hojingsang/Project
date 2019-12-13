package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Service-save")
public class Servlet_Servicesave extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		ServiceDTO service = new ServiceDTO();
			
		int lastsno = ServiceDAO.maxCnt() + 1;
		
		service.setSno(lastsno);
			
		service.setNickname(request.getParameter("nickname"));
		
		service.setPassword(request.getParameter("password"));
			
		String text = request.getParameter("text");
		service.setText(text);
			
		String content = request.getParameter("content");
		service.setContent(content);
			
		ServiceDAO.insertDB(service);
						
		response.sendRedirect("Service");
	}

}
