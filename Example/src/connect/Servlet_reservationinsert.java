package connect;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reservationinsert")
public class Servlet_reservationinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		rentDTO rent = new rentDTO();
		
		rent.setRentno(request.getParameter("rentno"));
		rent.setUserid(request.getParameter("userid"));
		rent.setUsername(request.getParameter("username"));
		String tel1 = request.getParameter("usertel1");
		String tel2 = request.getParameter("usertel2");
		String tel3 = request.getParameter("usertel3");
		rent.setUsertel(tel1 + "-" + tel2 + "-" + tel3);
		String myun1 = request.getParameter("usermyun1");
		String myun2 = request.getParameter("usermyun2");
		String myun3 = request.getParameter("usermyun3");
		String myun4 = request.getParameter("usermyun4");
		rent.setUsermyun(myun1 + "-" + myun2 + "-" + myun3 + "-" + myun4);
		
		int cnt = rentDAO.reservationInsert(rent);
		System.out.println("»ðÀÔ ·¹ÄÚµå ¼ö :"+ cnt);
		System.out.println("°í°´ ¼º¸í : "+ rent.getUsername());
		
		if(cnt > 0) {
			request.setAttribute("rent", rent);
			request.setAttribute("result", "true");
		} else {
			request.setAttribute("result", "false");
		}
		
		request.setAttribute("target", "reservationResult");
		RequestDispatcher dis = request.getRequestDispatcher("templat.jsp");
		dis.forward(request, response);
	}
}
