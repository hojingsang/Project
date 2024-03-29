package service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/service-update-input")
public class Servlet_serviceupdateinput extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		int sno = Integer.parseInt(request.getParameter("sno"));
		
		ServiceDTO service = ServiceDAO.readDB(sno);
		
		request.setAttribute("service", service);
		request.setAttribute("target", "ServiceUpdate");
		RequestDispatcher dis = request.getRequestDispatcher("templat.jsp");
		dis.forward(request, response);
		
	}
}
