<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Document</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <style>
        /* CSS reset */
        * {margin: 0; padding: 0;}
        html,body {width:100%; height:100%;}
        li {list-style: none;}
        a {text-decoration: none;}
        img {vertical-align: middle;
        width:700px;
        display:block;
        margin:0 auto;}
        
        /* banner area styles */
        .scroll_banner_area {
            width: 50%;
            overflow: hidden;
            height: 600px;
            position: relative;
            top : 20%;
            left : 25%;
        }
        .scroll_item { 
            position: absolute;
            width: 100%;
            height: 100%;
            left: 100%;
            /* background: url(http://placehold.it/2000x700) center no-repeat; */
/*
            background-image: url(http://placehold.it/2000x700);
            background-position: center;
*/
        }
        .scroll_item:first-child { left: 0; }
        .scroll_banner_area > a {
            color: #fff;
            position: absolute;
            z-index: 999999;
            font-size: 70px;
            display: inline-block;
            padding: 10px;
            border-right: 10px;
            background-color: rgba(0,0,0,0.1);
            top: 50%;
            margin-top: -45px;
            transition: background 300ms
        }
        .scroll_banner_area > a:hover {
            background-color: rgba(0,0,0,0.7);
        }
        #left_btn { left: 50px; }
        #right_btn { right: 50px; }
        .indicator_area {
            position: absolute;
            z-index: 999;
            bottom: 30px;
            left: 50%;
            margin-left: -67px;
        }
        .indicator_area > a {
            color: black;
            margin: 5px;
            font-size: 20px;
        }
        .indicator_area > a:first-child {
            color: gold;
        }
        .title{width:50%;position:relative;z-index:2;font-size:30px;font-weigth:bold;
		transform: translate(-45%,-90%);left: 60%;top:20%;}
		
		.title a {color:white;}

		.title p:first-child{width:50%;z-index:4;font-size:40px;font-weigth:bold;line-height:20px;
		background-color: black;line-height:50px;color:gold;position:relative;
		line-height:50px;}

		.title p:last-child{color:black;
		z-index:5;font-size:22x;font-weigth:bold;width:100%;position:relative;
    </style>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function(){
            var i = 0;
            //일시 정지 풀기
            var timeout;
            var clicked = false;
            //left, right 버튼을 클릭 했을때 일시 정지
            var intervalNum = setInterval(function(){
                // 0 1 - 1 2 - 2 3 - 3 0
                $(".scroll_item").eq(i).stop().animate({left:"-100%"}, 1000);
                i++;
                if(i == 4) i = 0;
                $(".scroll_item").eq(i).css("left", "100%").stop().animate({left:"0%"}, 1000);
                $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
            }, 5000)
            
            $("#right_btn").click(function(e){
                if(clicked == true){
                    return; // 이벤트 function의 실행을 여기서 종료하라.
                }
                clicked = true;
                setTimeout(function(){
                    clicked = false;
                }, 1000)
                //left, right 버튼을 클릭 했을때 일시 정지
                clearInterval(intervalNum);
                //일시 정지 풀기
                clearTimeout(timeout);
                timeout = setTimeout(function(){
                    intervalNum = setInterval(function(){
                        // 0 1 - 1 2 - 2 3 - 3 0
                        $(".scroll_item").eq(i).stop().animate({left:"-100%"}, 1000);
                        i++;
                        if(i == 4) i = 0;
                        $(".scroll_item").eq(i).css("left", "100%").stop().animate({left:"0%"}, 1000);
                        $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
                    }, 5000)
                }, 10000)
                //e.preventDefault() - a태그의 클릭 했을때 올라가는 기능을 지움
                e.preventDefault();
                $(".scroll_item").eq(i).stop().animate({left:"-100%"}, 1000);
                i++;
                if(i == 4) i = 0;
                $(".scroll_item").eq(i).css("left", "100%").stop().animate({left:"0%"}, 1000);
                $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
            })
            $("#left_btn").click(function(e){
                if(clicked == true){
                    return; // 이벤트 function의 실행을 여기서 종료하라.
                }
                clicked = true;
                setTimeout(function(){
                    clicked = false;
                }, 1000)
                //left, right 버튼을 클릭 했을때 일시 정지
                clearInterval(intervalNum);
                //일시 정지 풀기
                clearTimeout(timeout);
                timeout = setTimeout(function(){
                    intervalNum = setInterval(function(){
                        // 0 1 - 1 2 - 2 3 - 3 0
                        $(".scroll_item").eq(i).stop().animate({left:"-100%"}, 1000);
                        i++;
                        if(i == 4) i = 0;
                        $(".scroll_item").eq(i).css("left", "100%").stop().animate({left:"0%"}, 1000);
                        $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
                    }, 5000)
                }, 10000)
                //e.preventDefault() - a태그의 클릭 했을때 올라가는 기능을 지움
                e.preventDefault();
                $(".scroll_item").eq(i).stop().animate({left:"100%"}, 1000);
                i--;
                if(i < 0) i = 3;
                $(".scroll_item").eq(i).css("left", "-100%").stop().animate({left:"0%"}, 1000);
                $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
            })
            $(".indicator_area > a").click(function(e){
                if(clicked == true){
                    return; // 이벤트 function의 실행을 여기서 종료하라.
                }
                clicked = true;
                setTimeout(function(){
                    clicked = false;
                }, 1000)
                //left, right 버튼을 클릭 했을때 일시 정지
                clearInterval(intervalNum);
                //일시 정지 풀기
                clearTimeout(timeout);
                timeout = setTimeout(function(){
                    intervalNum = setInterval(function(){
                        // 0 1 - 1 2 - 2 3 - 3 0
                        $(".scroll_item").eq(i).stop().animate({left:"-100%"}, 1000);
                        i++;
                        if(i == 4) i = 0;
                        $(".scroll_item").eq(i).css("left", "100%").stop().animate({left:"0%"}, 1000);
                        $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
                    }, 5000)
                }, 10000)
                //e.preventDefault() - a태그의 클릭 했을때 올라가는 기능을 지움
                e.preventDefault();
                $(".scroll_item").eq(i).stop().animate({left:"-100%"}, 1000);
                i = $(this).index()
                $(".scroll_item").eq(i).css("left", "100%").stop().animate({left:"0%"}, 1000);
                $(".indicator_area > a").css("color", "black");
                $(".indicator_area > a").eq(i).css("color", "gold");
            })
        })
    </script>
</head>
<body>
	<div class="title">
		<p id="title2" align="center"><a href="index.jsp">KHL 렌트카</a></p>
		<p>최상의 프리미엄 렌트카</p>
	</div>
    <section class="scroll_banner_area">
        <div class="scroll_item">
            <a href="#"><img src = "http://placehold.it/700x500"><!-- <img src="car1.png" alt=""> --></a>
        </div>
        <div class="scroll_item">
            <a href="#"><img src = "http://placehold.it/700x500"><!-- <img src="car2.png" alt=""> --></a>
        </div>
        <div class="scroll_item">
            <a href="#"><img src = "http://placehold.it/700x500"><!-- <img src="car3.png" alt=""> --></a>
        </div>
        <div class="scroll_item">
            <a href="#"><img src = "http://placehold.it/700x500"><!-- <img src="Porshe911.png" alt=""> --></a>
        </div>
        <a href="#" class="fa fa-chevron-left" id="left_btn"></a>
        <a href="#" class="fa fa-chevron-right" id="right_btn"></a>
        <div class="indicator_area">
            <a href="#" class="fa fa-circle"></a>
            <a href="#" class="fa fa-circle"></a>
            <a href="#" class="fa fa-circle"></a>
            <a href="#" class="fa fa-circle"></a>
        </div>
    </section>
</body>
</html>