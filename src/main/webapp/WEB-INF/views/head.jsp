<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
margin-top: 10px;
width: 1000px;
display: flex;
flex-direction: row;
box-sizing: border-box;
}
#btn{
width: 200px;
margin-top: 25px;
}
#img{
width: 600px;
height: 70px;
text-align: center;
}
#img > img{
width: 120px;
height: 70px;
}
#member{
width: 200px;
margin-top: 25px;
text-align: right;
}
a{
text-decoration:none;
font-size: 15px;
color: gray;
padding: 0px 5px 0px 5px; 
}
</style>
<script>
$(function() {
	$('#MainImg').click(function() {
		location.href = '/';
	});
});
</script>
</head>
<body>
	<header>
			<div id="btn">
			<a href="ask.do">의뢰하기</a>
			<a href="board.do">자랑하기</a>
			<a href="product.do">상품페이지</a>
			<a href="message.do">쪽지</a>
			</div>
			<p>&nbsp;</p>
			<div id="img">
			<img src="/img/final_logo.png" id="MainImg">
			</div>
			<p>&nbsp;</p>
			<div id="member">
			<c:if test="${sessionScope.member == null }">
			<a href="log.do">로그인</a>|<a href="signup.do">회원가입</a>
			</c:if>
			<c:if test="${sessionScope.member != null }">
			<a href="logout.do">로그아웃</a>|<a href="profile.do">정보수정</a>
			</c:if>
			</div>
	</header>
</body>
</html>