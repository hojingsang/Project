<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<body>
<% 
	if(request.getAttribute("result").equals("false")) {
%>
	로그인 정보가 정확하지 않습니다.
	<br>
	<input type = "button" value = "돌아가기" onclick="button_click()" style="width:58px; height:22px;">
	<script type="text/javascript">
		function button_click() {
			history.go(-1);	
		}
	</script>
<% } else { %>
	<h4>정상적으로 로그인이 되었습니다.</h4>
	<br><br>
	<input type = "button" value = "메인으로" onclick = "location.href='index.jsp'">
<% } %>
</body>