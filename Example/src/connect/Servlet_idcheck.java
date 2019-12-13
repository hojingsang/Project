package connect;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/idcheck")
public class Servlet_idcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String cid = request.getParameter("cid");
		request.setAttribute("cid", cid);
		if(idcheck(cid)) {
			request.setAttribute("result", "true");
		} else {
			request.setAttribute("result", "false");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("id.jsp");
		dispatcher.forward(request, response);
	}
	private boolean idcheck(String id) {
		Connection con = null;
		Statement stmt = null;
		
		String sql = "select password from rentuser where id = '" + id + "'";
		
		try {
			con = getCon();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null) stmt.close();
				if(con!=null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return false;
	}
	private Connection getCon() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		return con;
	}
}
