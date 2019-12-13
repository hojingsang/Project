<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, service.ServiceDTO"%>

<form action = "Service-save" method="post">
	<table>
	<tr>
		<td>작성자 :</td>
		<td><input type = "text" name = "nickname"></td>
	</tr>
	<tr>
		<td>제   목 :</td>
		<td><input type = "text" name ="text" size="60" maxlength="60"></td>
	</tr>
	<tr>
		<td>내   용 :</td>
		<td><textarea cols="65" rows="10" name="content" maxlength="2000"></textarea></td>
	<tr>
	<tr>
		<td>비밀번호:</td>
		<td><input type = "password" name = "password" size ="60" maxlength="60"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value ="작성하기">
			<a href='Service'><input type = "button" value = "목록으로"></a>
		</td>
	</tr>
	</table>
</form>