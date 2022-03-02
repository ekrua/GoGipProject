<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}
header {
	right: 450px;
	width: 1000px;
	text-align: center;
	position: absolute;
}

.btn>div {
	display: flex;
	flex-direction: row;
}

.header_box >img {
	margin-top: 20px;
	width: 170px;
	height: 100px;
}

.btn {
	width: 100%;
}

.member {
	margin-left: 600px;
}

.box1>a {
	text-decoration: none;
	font-style: none;
	padding: 80px 10px 0px 10px;
}

a {
	color: black;
}
.header_box{
top:-300px;
position: relative;
}
#member_login{
margin-left: 600px;
}


section{
margin: 0px auto;
width: 1000px;
padding-top: 400px;
padding-left: 90px;
}
h3{
font-size: 30px;
}
table {
	border-collapse: collapse;
}
td{
padding: 20px 128px 10px 0px;
}
td > img {
width: 220px;
height: 200px;
}
</style>

<script>
  $( document ).ready( function() {
    $( '.slider' ).bxSlider({
    	  mode: 'horizontal',// 가로 방향 수평 슬라이드
    	   speed: 500,        // 이동 속도를 설정
    	   pager: false,      // 현재 위치 페이징 표시 여부 설정
    	   moveSlides: 1,     // 슬라이드 이동시 개수
    	   slideWidth: 1000,   // 슬라이드 너비
    	   minSlides: 1,      // 최소 노출 개수
    	   maxSlides: 1,      // 최대 노출 개수
    	   slideMargin: 10,    // 슬라이드간의 간격
    	   auto: true,        // 자동 실행 여부
    	   autoHover: true,   // 마우스 호버시 정지 여부
    	   controls: false    // 이전 다음 버튼 노출 여부
    });
  } );
</script>
</head>
<body>
	<header>
	<div class="slider">
  <div><img src="/img/main1.jpg"></div>
  <div><img src="/img/main2.jpg"></div>
  <div><img src="/img/main3.jpg"></div>
</div>
<div class="header_box">
		<img src="/img/final_logo.png">
		<div class="btn">
			<div class="box1">
				<a href="/">test1</a> <a href="/">test2</a> <a href="/">test3</a><a	href="/">test4</a>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<a href="/" id="member_login">로그인</a><a href="/">회원가입</a>
			</div>
		</div>
</div>
	</header>
	<section>
		<h3>OO회 베스트 고집</h3>
		<table>
			<tr>
				<td><img src="/img/box_img1.jpg" style="border-radius: 25px"><p>test</p> </td>
				<td><img src="/img/box_img2.jpg" style="border-radius: 25px"><p>test</p></td>
				<td><img src="/img/box_img3.jpg" style="border-radius: 25px"><p>test</p></td>
			</tr>
			<tr>
				<td><img src="/img/box_img1.jpg" style="border-radius: 25px"><p>test</p></td>
				<td><img src="/img/box_img2.jpg" style="border-radius: 25px"><p>test</p></td>
				<td><img src="/img/box_img3.jpg" style="border-radius: 25px"><p>test</p></td>
			</tr>
		</table>
		<div>
		<h3>시공 베스트</h3><button></button>
		</div>
	</section>
	<footer>
	</footer>
</body>
</html>