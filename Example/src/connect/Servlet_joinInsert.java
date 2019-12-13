package connect;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/joinInsert")
public class Servlet_joinInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		rentDTO user = new rentDTO();
		user.setId(request.getParameter("id"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		user.setTel(tel1 + "-" + tel2 + "-" + tel3);
		String myun1 = request.getParameter("myun1");
		String myun2 = request.getParameter("myun2");
		String myun3 = request.getParameter("myun3");
		String myun4 = request.getParameter("myun4");
		String gender = request.getParameter("gender");
		user.setMyun(myun1 + "-" + myun2 + "-" + myun3 + "-" + myun4);
		if(gender.equals("male")) {
			user.setGender(1);
		} else {
			user.setGender(2);
		}
		
		int cnt = rentDAO.insertDB(user);
		System.out.println("삽입 레코드 수 : " + cnt);
		System.out.println("이름 : " + user.getName());
		
		if(cnt > 0) {
			request.setAttribute("user", user);
			request.setAttribute("result", "true");		
		} else {
			request.setAttribute("result", "false");
		}
		
		request.setAttribute("target", "joinResult");
		RequestDispatcher dispatcher = request.getRequestDispatcher("templat.jsp");
		dispatcher.forward(request, response);
	}
}
