<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String session_id = (String)session.getAttribute("id");
	String session_name = (String)session.getAttribute("name");
%>

<style>
	#nav {height:40px; background:black; font-size:0px; text-align:center;}
	/* #leftmenu {float:left;} */
		
		/* #rightmenu {float:right;} */
		
		/* a:link{text-decoration:none;} */
		
		li{display:inline-block; height:40px;}
		
		li{position:relative;}						/* submenu */					
		li ul{display:none; position:absolute;}		/* submenu */
		li:hover ul{display:block;}					/* submenu */
		
		#nav li a:hover{background:gold;}
		
		li a{display:inline-block;
			background:black; color:white;
			width:150px;text-align:center;
			font-size:15px;line-height:40px;
			text-decoration:none;}
			
		#leftmenu>li:first-child a{background:black;}
		#leftmenu>li:first-child a:hover{background:gold;}
		
		#main { display:flex;
				height:100%;
				width:100%;}
		
		#left {flex : 4;}
		
		
</style>

<div id="nav">
		<ul id = "leftmenu">
			<li><a href='MainHome.jsp'>Home</a></li>
			<li><a href='#'>차량조회</a>
				<ul>
					<li><a href='sports'>스포츠카</a></li>
		 			<li><a href='#'>세단</a></li>
		 			<li><a href='#'>SUV</a></li>
				</ul>
			</li>	
			<li><a href='#'>렌트관리</a>
				<ul>
					<li><a href='rentreser'>렌트 예약</a></li>
		 			<li><a href='#'>예약 확인</a></li>
				</ul>
			</li>
			<li><a href ="Service">고객센터</a></li>
			<!-- </ul> -->
			<!-- <ul id = "rightmenu"> -->
			<%
				if(session_name==null){
			%>
				<li><a href='Privacy'>회원가입</a></li>
				<li><a href='loginForm'>로그인</a></li>
			<% } else { %>
				<li><a href="infoUpdate?id=<%=session_id %>" id="update">회원정보수정</a></li>
				<li><a href="logout" id="logout">
				<%=session_name %>님 로그아웃
				</a></li>
			<% } %>
	</ul>
</div>