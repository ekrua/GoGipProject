<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ask_sever</title>
<!-- CSS -->
<style type="text/css">
#wrap {
	position: relative;
	min-width: 980px;
}

.container {
	position: relative;
	margin: 0 auto;
}

.ask_wrap {
	padding: 20px 0 43px;
	background-color: #fff;
}

.ask_content {
	width: 700px;
	margin: 0 auto;
	padding-bottom: 60px;
}

.a-heading {
	word-wrap: break-word;
	overflow: hidden;
	padding-top: 30px;
	
}

.a-heading_title {
	display: table-cell;
	vertical-align: middle;
	color: #222;
}

.a-heading_title_inner {
	max-height: 72px;
	overflow: hidden;
	white-space: nowrap;
}

.title {
	float: left;
	width: 100%;
}

.title-icon {
	float: left;
	position: relative;
	top: 1px;
	width: 40px;
	font-size: 26px;
	vertical-align: middle;
	color: #5d9cf1;
	font-weight: bold;
	font-style: italic;
}

.title-text {
	float: left;
	width : 200px;
	display: inline;
	font-size: 24px;
	white-space: normal;
	display: inline;
	font-weight: bold;
	padding: 3px 20px;
}

.a-heading_content {
	font-size: 16px;
	line-height: 28px;
	margin-top: 7px;
}

.a-userinfo {
	position: relative;
	font-size: 13px;
	margin-top: 25px;
}

.a-userinfo_proofile {
	position: relative;
	display: inline-block;
	float: left;
	width: 100px;
}
.a-userinfo_date{
 	float: left;
}

.answer-content {
	position: relative;
	padding: 22px 0 40px;
	border: 1px solid #eee;
	background-color: #f4f5f6;
}

.answer-content_inner {
	width: 800px;
	margin: 0 auto;
}

.answer-content_list {
	margin: 0 49px;
}

.answer-content_item {
	background-color: white;
	padding: 15px 10px;
	position: relative;
	height: 100px;
	overflow: visible;
	box-shadow: 0 10px 20px 0 rgb(150 153 159/ 50%);
	border-radius: 20px;
	margin-top: 40px;
	margin-bottom: 50px;
}

.answer-content_item .a-profile {
	color: #000;
	text-decoration: none;
	width: 700px;
}

.description {
	font-size: 16px;
	float: left;
	width: 650px;
	padding: 5px 10px;
}

.a-text {
	font-size: 13px;
	float: left;
	width: 650px;
	padding: 15px 10px;
}

.a-date {
	float: right;
	font-size: 11px;
	margin-top: 10px;
	padding: 0 10px;
}
</style>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div id="wrap" class="wrap_home">
		<div id="container">
			<div class="container_wrap">
				<div class="ask_wrap">
					<div class="ask_content" > 
						<div class="a-heading" style="height: auto; width: 100%; border-top:1px solid gray;">
							<div class="a-heading_title">
								<div class="a-heading_title_inner">
									<div class="title">
										<div class="title-icon">ASK</div>
										<div class="title-text">???????????? ?????????.</div>
									</div>
								</div>
								<!--a-heading_title_inner ?????? -->
							</div>
							<!-- a-heading_title ?????? -->
							<div class="a-heading_content">??? ?????? ?????? ???????????????. ??? ????????? ???????????????.

							</div>
							<!-- a-heading_content ?????? -->
						</div>
						<!-- a-heading ?????? -->
						<div class="a-userinfo">
							<div class="a-userinfo_proofile _profileArea">????????? ?????????</div>
							<!-- _profileArea ?????? -->
							<span class="a-userinfo_date"> 2022.03.04 </span>
							<!-- a-urerinfo ?????? -->
						</div>
						<!-- a-urerinfo ?????? -->
					</div>
					<!-- ask_content ?????? -->
					<div id="answerArea" class="answer-content">
						<div class="answer-content_inner">
							<div class="answer-content_list">
								<div class="answer_1 answer-content_item">
									<div class="description">????????? ?????????</div>
									<p class="a-text">?????? ??? ?????? ???????????? ???????????????.</p>
									<div class="a-date">2022.03.03</div>
									</a>
								</div>
								<!-- answer_1 ?????? -->
								<div class="answer_2 answer-content_item">
									<div class="description">????????? ?????????</div>
									<p class="a-text">?????? ??? ?????? ???????????? ???????????????.</p>
									<div class="a-date">2022.03.05</div>
									</a>
								</div>
								<!-- answer_2 ?????? -->
								<div class="answer_3 answer-content_item">
									<div class="description">????????? ?????????</div>
									<p class="a-text">?????? ??? ?????? ???????????? ???????????????.</p>
									<div class="a-date">2022.03.06</div>
									</a>
								</div>
								<!-- answer_3 ?????? -->
								<div class="answer_4 answer-content_item">
									<div class="description">????????? ?????????</div>
									<p class="a-text">?????? ??? ?????? ???????????? ???????????????.</p>
									<div class="a-date">2022.03.08</div>
									</a>
								</div>
								<!-- answer_1 ?????? -->
							</div>
							<!-- answer-content_list ?????? -->
						</div>
						<!-- answer-content_inner ?????? -->
					</div>
					<!-- anserArea ?????? -->
				</div>
				<!-- ask_wrap ?????? -->
			</div>
			<!-- container_wrap ??????  -->
		</div>
		<!-- #container ??????  -->
	</div>
	<!-- #wrap ??????  -->
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>