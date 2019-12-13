<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
	<style>
		table { margin:0 auto; }
		#button{
		border-top-right-radius:5px;
		border-top-left-radius:5px;
		border-bottom-right-radius:5px;
		border-bottom-left-radius:5px;
		background-color : rgba(0,0,0,0);
		border : 1px solid black;
		}
	</style>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" align="center"><h1>GENESIS</h1></td>
		</tr>
		<tr>
			<td colspan="2">
			<img src = "http://placeholder.it/500x300"><!-- <img src = "제네시스.jpg" width="500"> --></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<h3>주요제원</h3>
			</td>
		</tr>
		<tr>
			<td align = "center">
				<h4>엔진형식<br>
				과급방식<br>
				배기량<br>
				연료<br>
				연비(등급)<br>
				승차인원<br>
				구동방식<br>
				변속기<br></h4>
			</td>
			<td>
				<h4> - V6<br>
				- 자연흡기<br>
				- 3,778cc<br>
				- 가솔린<br>
				- 자동 6.7 ~ 7.4km/L<br>
				- 4~5인승<br>
				- 풀타임 4륜구동,후륜구동<br>
				- 자동8단<br> </h4>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type = "button" id="button" value = "돌아가기" onclick="button_click()">
			<script type="text/javascript">
				function button_click() {
					history.go(-1);	
				}
			</script>
		</tr>
	</table>
</body>
</html>