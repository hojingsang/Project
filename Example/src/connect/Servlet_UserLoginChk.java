package connect;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserLoginChk")
public class Servlet_UserLoginChk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String userid = request.getParameter("id");
		String password = request.getParameter("password");
		
		rentDTO user = rentDAO.readDB(userid);
		
		HttpSession session = request.getSession();
		
		
		if(password.equals(user.getPassword())) {
			session.setAttribute("id", userid);
			session.setAttribute("name", user.getName());

			request.setAttribute("target", "main");
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			
		} else {
			request.setAttribute("result", "false");
			request.setAttribute("target", "loginResult");
			RequestDispatcher dispatcher = request.getRequestDispatcher("templat.jsp");
			dispatcher.forward(request, response);
		}
	}
}
