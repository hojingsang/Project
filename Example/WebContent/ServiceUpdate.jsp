<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, service.ServiceDTO"%>
    
<form action = "Service-update" method ="post">
	<input type ="hidden" name ="sno" value = ${service.getSno() }>
	<table border="1">
		<tr>
			<td colspan="2" height="50" align="center"><font size="5">게시글 입력</font></td>
		</tr>
		<tr>
			<td>작성자 : </td>
			<td><input type ="text" name = "nickname" value = "${service.getNickname() }" readonly></td>
		</tr>
		<tr>
			<td>제  목 : </td>
			<td><input type ="text" name = "text" size="60" maxlength = "60" value = "${service.getText() }"></td>
		</tr>
		<tr>
			<td>내  용 : </td>
			<td><textarea name = "content" cols="65" rows = "10" maxlength = "2000" style="resize:none">${service.getContent()}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value ="전송">
			<input type="reset" value ="다시쓰기">
			<input type="button" value ="목록으로" onclick="location.href='Service'">
		</tr>
	</table>
</form>