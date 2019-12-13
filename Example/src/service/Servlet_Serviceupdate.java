package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Service-update")
public class Servlet_Serviceupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServiceDTO service = new ServiceDTO();
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		request.setAttribute("service", service);
		
		
		int sno = Integer.parseInt(request.getParameter("sno"));
		service.setSno(sno);
		service.setText(request.getParameter("text"));
		String content = request.getParameter("content");
		service.setContent(content);
		
		ServiceDAO.updateDB(service);
		
		response.sendRedirect("Service");
	}
}
