<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		html,body { width:100%; height:100%; }
		#homeimg { height: 100%; }
	</style>
</head>
<body>
	<div id = "homeimg">
	<img src= "http://placeholder.it/923x752"><!-- <img src = "home.jpg" style="height:100%;"> -->
	</div>
	<script type="text/javascript">
			          	 	jQuery(window).scroll(function(){
			               	var scrollTop =jQuery(document).scrollTop();
			               	//console.log("scrollTop : " + scrollTop);
			               	if (scrollTop < 50) {
			                	   scrollTop = 50;
			               	}
				              jQuery("#quickMenu").stop();
				              jQuery("#quickMenu").animate( { "top" : scrollTop })
				           })
		       			</script>
				       <div style="position: relative;">
				           <div id="quickMenu">
				               <div><a href="Car"><img src = "http://placehold.it/200x100"><!-- <img src="image/제네시스.jpg"> --></a>제네시스</div>
				               <div><a href="#"><img src = "http://placehold.it/200x100"><!-- <img src="image/아반떼.jpg"> --></a>아반떼</div>
				               <div><a href="#"><img src = "http://placehold.it/200x100"><!-- <img src="image/stinger.jpg"> --></a>스팅어</div>
				           </div>
						</div>
</body>
</html>