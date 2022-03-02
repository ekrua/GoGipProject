<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
*{
margin: 0px;
padding: 0px;
}
header{
margin: 0px auto;
width: 1000px;
background-color: white;
padding: 5px;
display: flex;
flex-direction: row;
justify-content: space-between;
}
img{
	width: 65px;
	height: 30px;
}
a{
text-decoration:none;
font-size: 15px;
color: gray;
padding: 0px 10px 0px 10px;
}
</style>

</head>
<body>
	<header>
			<div id="btn">
			<a href="/">test1</a>
			<a href="/">test2</a>
			<a href="/">test3</a>
			<a href="/">test4</a>
			</div>
			<p>&nbsp;</p>
			<div id="img">
			<img src="/img/final_logo.png">
			</div>
			<p>&nbsp;</p>
			<div id="member">
			<a href="/">로그인</a><a href="/">회원가입</a>
			</div>
	</header>
</body>
</html>