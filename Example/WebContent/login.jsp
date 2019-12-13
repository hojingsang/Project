<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인</title>
	<style>
		table { text-align : center; margin : auto;
		margin-top:150px;
		height:200px;}
	</style>
	<script>
		function oncheck() {
			if(!fm.id.value) {
				alert('아이디를 입력하세요.');
				fm.id.focus;
				return false;
			}
			if(!fm.password.value) {
				alert('비밀번호를 입력하세요.');
				fm.password.focus;
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<form action = "UserLoginChk" name="fm" method="post" onsubmit = "return oncheck()">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type = "text" name="id" size = "10"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name="password" size = "10"></td>
			</tr>
			<tr>
				<td><input type="submit" value ="로그인"></td>
				<td><a href = "Privacy.jsp"><input type = "button" value = "회원가입"></a></td>
			</tr>	
		</table>
	</form>
</body>
</html>