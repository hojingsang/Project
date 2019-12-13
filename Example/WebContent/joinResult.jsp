<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	if(request.getAttribute("result").equals("false")) {
%>
	<!-- <style>
		#button{
			border-top-right-radius:5px;
			border-top-left-radius:5px;
			border-bottom-right-radius:5px;
			border-bottom-left-radius:5px;
			background-color : rgba(0,0,0,0);
			border : 1px solid black;
			width:58px; height:22px;
			}
	</style> -->
	
	회원 정보가 정확 하지 않습니다.
	<br>
	<input type = "button" id="button" value = "돌아가기" onclick="button_click()" style="width:58px; height:22px;">
	<script type="text/javascript">
		function button_click() {
			history.go(-1);	
		}
	</script>
<% } else { %>
	<h4>정상적으로 회원가입이 되었습니다.</h4>
	<br><br>
	<input type = "button" value = "메인으로" onclick = "location.href='index.jsp'">
<% } %>