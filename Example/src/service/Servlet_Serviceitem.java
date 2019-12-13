package service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Service-item")
public class Servlet_Serviceitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String SeqNo = request.getParameter("SEQ_NO");
		int sno = Integer.parseInt(SeqNo);
		ServiceDTO service = ServiceDAO.readDB(sno);
		ServiceDAO.updateHit(sno);
		
		request.setAttribute("service", service);
		request.setAttribute("sno", sno);
		request.setAttribute("target", "ServiceitemView");
		RequestDispatcher dispatcher = request.getRequestDispatcher("templat.jsp");
		dispatcher.forward(request, response);
	}
}
