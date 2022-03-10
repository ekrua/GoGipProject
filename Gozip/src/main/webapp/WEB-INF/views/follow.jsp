<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

a {
	font-size: 15px;
	font-weight: bold;
}

section {
	margin: 0px auto;
	width: 1000px;
	padding-top: 200px;
	padding-left: 90px;
	padding-bottom: 100px;
}

h3 {
	font-size: 30px;
}

table {
	border-collapse: collapse;
}

td {
	padding: 20px 128px 10px 0px;
}

td>img {
	width: 250px;
	height: 250px;
}

.slider img {
	width: 250px;
	height: 250px;
	margin-right: 130px;
}

.recommend {
	margin-top: 100px;
	margin-bottom: 50px;
	width: 1000px;
}

.slider {
	display: flex;
	flex-direction: row;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('.slider').bxSlider({
			mode : 'horizontal',// 가로 방향 수평 슬라이드
			speed : 500, // 이동 속도를 설정
			pager : true, // 현재 위치 페이징 표시 여부 설정
			moveSlides : 1, // 슬라이드 이동시 개수
			slideWidth : 1000, // 슬라이드 너비
			minSlides : 1, // 최소 노출 개수
			maxSlides : 3, // 최대 노출 개수
			slideMargin : 3, // 슬라이드간의 간격
			auto : true, // 자동 실행 여부
			autoHover : true, // 마우스 호버시 정지 여부
			controls : true
		// 이전 다음 버튼 노출 여부
		});
	});
</script>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<section>
		<h3>내 구독자 목록</h3>
		<table>
			<tr>
				<td><img src="/img/title_img.png" style="border-radius: 25px">
					<p>text</p></td>
				<td><img src="/img/title_img.png" style="border-radius: 25px">
					<p>text</p></td>
				<td><img src="/img/title_img.png" style="border-radius: 25px">
					<p>text</p></td>
			</tr>
			<tr>
				<td><img src="/img/title_img.png" style="border-radius: 25px">
					<p>text</p></td>
				<td><img src="/img/title_img.png" style="border-radius: 25px">
					<p>text</p></td>
				<td><img src="/img/title_img.png" style="border-radius: 25px">
					<p>text</p></td>
			</tr>
		</table>
		<div class="recommend">
			<h3>추천 구독자</h3>
		</div>
		<div class="slider">
			<div>
				<img src="/img/title_img.png">
			</div>
			<div>
				<img src="/img/title_img.png">
			</div>
			<div>
				<img src="/img/title_img.png">
			</div>
		</div>
	</section>
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>