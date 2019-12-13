<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원가입</title>
	<script src = "join.js">
	</script>
	<script>
	function id_check() {
		URL = "id.jsp"
		window.open(URL,"아이디 체크",
			"width=500,height=200");
		}
	</script>
	<style>
		html,body{
		width:100%;
		height:100%;
		margin :auto;}
		table {
		position:absolute; left:50%; top:50%;
		transform:translate(-50%,-50%); }
			
		td { padding-top : 30px; background-color : LightGray; }
	</style>
</head>
<body>
	<form action = "joinInsert" name="fm" method="post" onsubmit = "return oncheck()">
		<table>
			<tr>
				<td>아이디</td>
				<td>
				<input name="id" type="text" size="10" readonly>
				<input type="button" value="중복체크" onclick ="id_check()">
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" type="text" size="10"></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input name="password" type="password" size="10"></td>
			</tr>
			<tr>
				<td>면허번호</td>
				<td>
					<select name = "myun1">
						<option>서울</option>
						<option>경기</option>
						<option>강원</option>
						<option SELECTED>대구</option>
						<option>경북</option>
					</select>
					- <input name = "myun2" type = "text" size="2" maxlength="2"/>
					- <input name = "myun3" type = "text" size="6" maxlength="6"/>
					- <input name = "myun4" type = "text" size="2" maxlength="2"/>
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<select name = "tel1">
						<option>010</option>
						<option>011</option>
						<option>017</option>
					</select>
				- <input name="tel2" type="tel" size ="4" maxlength="4"/>
				- <input name="tel3" type="tel" size ="4" maxlength="4"/>
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<input name="gender" type="radio" value="male" checked="checked">남자
				<input name="gender" type="radio" value = "female">여자
				</td>
			</tr>
			<tr>
				<td colspan="2" align = center>
				<input type="submit" value ="회원가입">
				<input type="reset" value ="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>