<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<% 
	if(request.getAttribute("result").equals("false")) {
%>
	입력 정보가 올바르지 않습니다.
	<input type ="button" value="되돌아가기" onclick = "buttonClick()">
	<script type ="text/javascript">
		function buttonClick() {
			history.go(-1);
		}
	</script>
<% } else { %>
	정상적으로 입력 되었습니다.
	<input type ="button" value="되돌아가기" onclick = "buttonClick()">
	<script type ="text/javascript">
		function buttonClick() {
			history.go(-1);
		}
	</script>
<% } %>