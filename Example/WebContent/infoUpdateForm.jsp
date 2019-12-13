<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , connect.rentDTO"%>
    
<form action = "UserUpdate" method="post">
	<table>
	<tr>
		<td>이름</td>
		<td><input type = "text" name="name" value="${rent.getName() }"></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type = "text" name = "id" readonly value="${rent.getId() }"></td> 
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type = "password" name = "password" value ="${rent.getPassword() }"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type ="text" name="tel" value="${user.rentTel() }"></td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<input type = "submit" value = "수정하기">
			<input type = "button" value = "탈퇴하기" onclick = "location.href='Userdelete?id=${rent.getId()}'">
			<input type = "reset" value = "삭제하기">
			<input type = "button" value = "돌아가기" onclick = "location.href='index.jsp'">
		</td>
	</tr>
	</table>
</form>