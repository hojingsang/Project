<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,connect.rentDAO"%>
<%int no = rentDAO.MaxCnt() + 1;%>
<html>
<head>
	<style>
		form {
			position:absolute;
			top:40%; left:40%;
		}
	</style>
</head>
<body>
	<form action = "reservationinsert" name = "fm" onsubmit = "reservationCheck()">
		<table width="500px">
			<tr>
				<td colspan="2" align="center"><h3>렌트 예약하기</h3></td>
			</tr>
			<tr>
				<td>예약번호</td>
				<td><input type ="text" name ="rentno" value="<%=no %>" size ="15" readonly></td> 
			</tr>
			<tr>
				<td>아이디 </td>
				<td><input type ="text" name ="userid" size ="15"></td>
			</tr>
			<tr>
				<td>고객성명</td>
				<td><input type ="text" name ="username" size ="15"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<select name = "usertel1">
						<option>010</option>
						<option>011</option>
					</select>
					- <input type ="text" name ="usertel2" size ="5">
					- <input type ="text" name ="usertel3" size ="5">
				</td>
			</tr>
			<tr>
				<td>면허번호</td>
				<td>
					<input type ="text" name ="usermyun1" size ="5" placeholder = "직접입력">
					- <input type ="text" name ="usermyun2" size ="5" maxlength = "2">
					- <input type ="text" name ="usermyun3" size ="5" maxlength = "6">
					- <input type ="text" name ="usermyun4" size ="5" maxlength = "2">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type = "submit" value="등록">
				<input type = "reset" value="지우기" onclick="resetChk()">
			</tr>
		</table>
	</form>
</body>
</html>