<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="js/jquery-1.9.1.min.js"></script>
<style>
	* {margin:0; padding:0;}
	.container {
		display:flex;
		flex-direction:column;
		height:100%;
	}
	.header {height:100px; line-height:100px; text-align:center; font-size:50px;}
	
	.header img {float:left; width:250px; height:100px;}
	.header > a{color : black;}
	
	.wrap{
		width:100%;
		height:100%;
		display:flex;
		justify-content:center;
	}
    
    .wrap > #logo { margin-left:200px;}
    .wrap > table { margin-top : 100px; }
    
   	#quickMenu img { width:150px; height:150px; }
		
		a{text-decoration:none; color:black;}
		
	#quickMenu {
            position: absolute; left: 120px;
            top: 50px; border: 3px solid Gold;
            padding: 7px; background-color: white;
            border-radius: 10px; box-shadow: 3px 3px 7px #555555;}
    #quickMenu div {
            text-align: center; padding-bottom: 15px;
            font-size: 12px; line-height: 15px;}
	
</style>
<body>
	<div class = "container">
		<div class = "header">
			<jsp:include page = "header.jsp" />
		</div>
		<div class = "content">
				<jsp:include page = "nav.jsp" />
		</div>
		<div class = "wrap">
				<jsp:include page = "${target}.jsp" />
		</div>		 	
		<div class = "footer">
			<jsp:include page = "footer.jsp" />
		</div>
	</div>
</body>