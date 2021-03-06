<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_main</title>
<!-- CSS -->
<style type="text/css">
#wrap {
	margin-top: 50px;
	position: relative;
	min-width: 980px;
}

body {
	
}

div {
	display: block;
}

.wrap_home {
	padding: 18px o;
}
/* NEW PRODUCT 부분 */
.new_wrap {
	width: 980px;
	margin: 0 auto;
}

.new_list {
	position: relative;
	margin-top: 50px;
}

.new_list:after {
	display: table;
	clear: both;
	content: '';
}

.tit_main {
	font-style: italic;
	font-size: 35px;
	font-weight: bold;
	color: #2972b6;
	text-align: center;
}

.new_content {
	width: 100%;
	float: left;
	align-content: center;
	display: flex;
	justify-content: space-between;
	margin-top: 50px;
}

.nproduct {
	float: left;
	position: relative;
	width: 250px;
	height: 400px;
	overflow: visible;
}

.np_img {
	width: 100%;
	height: 320px;
	background-color: #f2b8b8;
	border-radius: 48% 48% 0 0;
	background-size: cover;
	background-repeat: no-repeat;
}

.description {
	text-align: center;
	padding: 10px 0;
}

.text {
	font-size: 16px;
}

.p_btn {
	width: 100%;
	padding: 10px 0;
	align-content: center;
}

.btn {
	text-align: center;
	padding: 5px 20px;
	height: 18px;
	border: 1px solid #222222;
	border-radius: 38px 38px 38px 38px;
	width: 127px;
	color: #222222;
}
/*PRODUCT 부분*/
.product_wrap {
	width: 980px;
	height:1000px;
	margin: 0 auto;
}

.product_list {
	position: relative;
	margin-top: 100px;
}

.product_content {
	width: 100%;
	float: left;
	align-content: center;
	display: flex;
	justify-content: space-between;
	position: relative;
	cursor: pointer;
	flex-wrap: wrap;
}

.product {
	float: left;
	height: 350px;
	position: relative;
	cursor: pointer;
	text-align: center;
	position: relative;
}

.box {
	width: 250px;
	height: 250px;
	transition: 1s;
}

.product1 {
	background: url(/img/np04.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.product2 {
	background: url(/img/np05.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.product3 {
	background: url(/img/np06.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.product4 {
	background: url(/img/np07.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.product5 {
	background: url(/img/np08.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.product6 {
	background: url(/img/np09.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.product1, .product2, .product3, .product4, .product5, .product6 {
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: -o-flex;
	display: flex;
	justify-content: center;
	align-items: center;
	z-index: 1;
	transform: translateY(150px);
}

.p_cont1, .p_cont2, .p_cont3 {
	margin-bottom: 80px;
}

.product:hover .product1 {
	transform: translateY(0);
}

.product:hover .product2 {
	transform: translateY(0);
}

.product:hover .product3 {
	transform: translateY(0);
}

.product:hover .product4 {
	transform: translateY(0);
}

.product:hover .product5 {
	transform: translateY(0);
}

.product:hover .product6 {
	transform: translateY(0);
}

.img_text {
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: -o-flex;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 15px;
	box-sizing: border-box;
	box-shadow: 0 10px 20px 0 rgb(150 153 159/ 50%); transform :
	translateY( -100px);
	position: relative;
	background-color: whitesmoke;
	transform: translateY(-100px)
}

.product:visited .img_text {
	transform: translateY(0);
}

.text_area h4 {
	margin-top: 80px;
	font-size: 18px;;
}

.text_area .t_han {
	margin-top: 5px;
	line-height: 36px;
	font-size: 15px;
}

</style>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div id="wrap" class="wrap_home">
		<div class="new_wrap">
			<div class="new_list">
				<h2 class="tit_main">NEW PRODUCT</h2>
				<div class="new_content">
					<div class="nproduct new1 ">
						<div class="np_img"
							style="background-image: url('/img/np01.jpg');"></div>
						<div class="description">
							<p class="text">제품명</p>
							<div class="p_btn">
								<a class="btn" href="product_serve.do">상품 교환</a>
							</div>
						</div>
					</div>
					<!-- new1 영역 -->
					<div class="nproduct new2 ">
						<div class="np_img"
							style="background-image: url('/img/np02.jpg');"></div>
						<div class="description">
							<p class="text">제품명</p>
							<div class="p_btn">
								<a class="btn" href="/">상품 교환</a>
							</div>
						</div>
					</div>
					<!-- new2 영역 -->
					<div class="nproduct new3 ">
						<div class="np_img"
							style="background-image: url('/img/np03.jpg');"></div>
						<div class="description">
							<p class="text">제품명</p>
							<div class="p_btn">
								<a class="btn" href="/">상품 교환</a>
							</div>
						</div>
					</div>
					<!-- new3 영역 -->
				</div>
				<!-- new_content 영역 -->
			</div>
			<!-- new_list 영역 -->
		</div>
		<!-- new_wrap 영역 -->
		<div class="product_wrap">
			<div class="product_list">
				<h2 class="tit_main">PRODUCT</h2>
				<div class="product_content">
					<div class="product p_cont1">
						<div class="box product1"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="/">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product1 영역 -->
					<div class="product p_cont2">
						<div class="box product2"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="/">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product2 영역 -->
					<div class="product p_cont3">
						<div class="box product3"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="/">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product3 영역 -->
					<div class="product">
						<div class="box product4"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="/">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product 영역4 -->
					<div class="product">
						<div class="box product5"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="/">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product5 영역 -->
					<div class="product">
						<div class="box product6"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="/">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product6 영역 -->
				</div>
				<!-- product_content 영역 -->
			</div>
			<!-- product_list 영역 -->
		</div>
		<!-- product_wrap 영역 -->
	</div>
	<!-- #wrap 영역 -->
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>