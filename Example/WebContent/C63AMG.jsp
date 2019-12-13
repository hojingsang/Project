<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
	#button{
	border-top-right-radius:5px;
	border-top-left-radius:5px;
	border-bottom-right-radius:5px;
	border-bottom-left-radius:5px;
	background-color : rgba(0,0,0,0);
	border : 1px solid black;
	}
	
	td { padding : 10px; }
</style>
</head>
<body>
	<table align=center>
		<tr>
			<th><h3>MERCEDES-BENZ C63 AMG</h3></th>
		</tr>
		<tr>
			<td>
			<figure>
			<img src = "image/C63amg.jpg">
			<figcaption style="font-size:5px;">*본 사진과 실물이 다를수 있습니다.</figcaption>
			</figure>
			</td>
		</tr>
		<tr>
			<td align=center>1일 렌트 가격 및 자세한 사항은 지점을 방문해주세요.</td>
		</tr>
		<tr>
			<td align=center>
				<input type ="button" id="button" value = "이전 화면으로" onclick = "pop()">
					<script type="text/javascript">
						function pop() {
							alert('이전 화면으로 되돌아갑니다.');
							history.go(-1);
						}
				</script>
			</td>
		</tr>
	</table>
</body>
</html>