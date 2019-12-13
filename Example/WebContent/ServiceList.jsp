<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='java.util.*, service.ServiceDTO' %>

<% request.setCharacterEncoding("utf-8"); %>

<table border="1" width="700" align="center">
	<tr>
		<th colspan="4" height="100px"><h3>고객 센터</h3></th>
	</tr>
	<tr>
		<th>작성자</th><th>제목</th><th>작성일</th><th>조회수</th>
	</tr>
	<%
		List list = (List)request.getAttribute("list");
		for(int i=0; i<list.size(); i++) {
			ServiceDTO service = (ServiceDTO) list.get(i);
			out.print("<tr><td align =center height=30px>" + service.getNickname() + "</td>" );
			out.print("<td align = center height=30px> <a href ='Service-item?SEQ_NO=" + service.getSno() + "'>" + service.getText() + "</a></td>" );
			out.print("<td align = center height=30px>" + service.getRegdate() + "</td>" );
			out.print("<td align = center height=30px>" + service.getHit() + "</td></tr>" );
			//out.print("<td>" + service.getUpdatedate() + "</td></tr>");
			
		}
	%>
	<tr>
		<td colspan = "4" align="center" height=50px>
		<%
		int rowcnt = (int)request.getAttribute("rowcnt");
		for(int pcnt=1; pcnt <= rowcnt; pcnt++) {%>
		<a href = 'Service?SEQ_NO=<%= pcnt %>'>[<%= pcnt %>] </a>
		<% } %>
		</td>
	</tr>
	<tr>
		<td colspan = "4" align="center" height=50px>
		<input type ="button" value ="작성하기" onclick = "location.href='ServiceJoinForm'">
	</tr>
</table>