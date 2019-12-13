<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>개인정보 이용 동의</title>
	<style>
		
		form {
			align-self:center;
			width:300px;
			left: 50%; top: 50%;
			text-align:center;}
		table { background-color : black; color:white;
			border : 2px solid gold; width : 400px;}
	</style>
	<script src = "개인정보.js"></script>
</head>
<body>
	<form action="joinForm" name="fm" method="post" onsubmit = "return check()">
		<table>
			<tr>
				<th colspan = "2"><h1>개인정보 이용 동의</h1></th>
			</tr>
			<tr>
				<td align="center">
					<textarea cols="30" rows="10" readonly style="resize:none; text-align:center;">약관동의</textarea>
				</td>
			<!-- placeholder = "약관동의"를 사용할 경우 미리 표시하고 , 작성할땐 글자가 없어진다.-->
				<td>		
					<input type="checkbox" name="agree1" id="agree1" /><label for="agree1">약관동의</label>
				</td>
			</tr>
			<tr>
				<td align="center">
					<textarea cols="30" rows="10" readonly style="resize:none; text-align:center;">개인정보</textarea>
				</td>
				<td>
					<input type="checkbox" name="agree2" id="agree2" /><label for="agree2">개인정보동의</label>
				</td>
			</tr>
			<tr>
				<td colspan = "2" align="center">
					<input type="checkbox" name="all" id="all" onclick="allCheck()" />
					<label for="all">전체동의</label>
				</td>
			</tr>
			<tr>
				<td colspan = "2" align="center">
					<input type="submit" value="동의"/>
					<input type="reset" value ="취소"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>