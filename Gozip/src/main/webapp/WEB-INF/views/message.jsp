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
* {
	margin: 0;
	padding: 0;
}
.main_container{
 margin: 0px auto;
 width: 1000px;
 height: 700px;
}
h2{
margin: 20px 5px 10px 0px;
}
.main_container a{
padding: 5px 10px 10px 10px;
font-size: 14px;
}
#message_link{
width: 1000px;
height: 30px;
text-align: right;
}
.box p:nth-child(1) {
	width: 600px;
	margin-top:50px;
	padding-bottom: 10px;
	margin-left: 200px;
	border-bottom: 1px solid #c9c9c9;
}
.box p:nth-child(2) {
	width: 600px;
	margin-top:30px;
	padding-bottom: 10px;
	margin-left: 200px;
	border-bottom: 1px solid #c9c9c9;
}
.box p:nth-child(3) {
	width: 600px;
	margin-top:30px;
	margin-left: 200px;
	padding-bottom: 10px;
}
.box p:nth-child(2) input{
border: none;
font-size:15px;
width: 497px;
}
.box p:nth-child(3) input{
border: none;
font-size:15px;
width: 550px;
}
input:focus {outline:none;}
textarea {
	resize: none;
	width: 600px;
	height: 300px;
	padding: 5px;
}
textarea:focus {
	outline:none;
}
button{
	width: 70px;
	height: 40px;
	border-radius: 5px;
	border: none;
}
button:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}
#file{
	margin-left: 200px;
	width: 400px;
}
.box button{
	float: right;
	margin-right: 188px;
}
</style>
<script>
</script>
</head>
<body>
<!--<c:if test="${sessionScope.member == null}">
		<script>
			alert('로그인해야 이용하실수 있습니다');
			location.href='/';
		</script>
	</c:if>-->
	<header>
	<%@include file="/WEB-INF/views/head.jsp" %>
	</header>
	<section>
		<div class="main_container">
		<h2>메세지 보내기</h2>
		<hr>
		<div id="message_link">
		<a href="message_box.do?mode=">송신 메세지</a><a href="message_box.do?mode=">수신 메세지</a>
		</div>
		<form action="message_write.do" method="post" enctype="multipart/form-data">
			<div class="box">
				<p>보내는 사람 : ${sessionScope.member.id }</p>
				<p>받는 사람 : <input type="text" name="rv_id"></p>
				<p><textarea placeholder="내용을 입력하세요" name="m_content"></textarea></p>
				<input type="file" name="profile" id="file" multiple="multiple">
				<button>전송</button>
			</div>
		</form>
		</div>
	</section>
	<footer> 
	<%@include file="/WEB-INF/views/foot.jsp" %>
	</footer>
</body>
</html>