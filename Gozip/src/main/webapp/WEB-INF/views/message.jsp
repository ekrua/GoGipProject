<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}
section{
margin: 0px auto;
width: 1000px;
height: 700px;
box-sizing: border-box;
}
.container{
margin-top: 25px;
display: flex;
flex-direction: row;
}
.ch_top_box{
width: 1000px;
height: 50px;
border: 1px solid black;
text-align: center;
}
.ch_top_box{
font-size: 24px;
margin-top: 25px;
}
.container2{
display: flex;
flex-direction: row;
}
.send_list{
margin-top: 5px;
width: 150px;
height: 595px;
border: 1px solid black;
overflow: scroll;
overflow-x: hidden;
}
.send_list > details{
padding: 5px;
}
.ch_box{
margin-top: 5px;
margin-left:5px;
width: 845px;
height: 595px;
display: flex;
flex-direction: column;
}
.ch_view{
width: 845px;
height: 545px;
border: 1px solid black;
}
.ch_write{
width: 845px;
height: 50px;
}
.ch_write > input{
width: 750px;
height: 100%;
font-size: 14px;
}
.ch_write > button{
width: 90px;
height: 100%;
padding: 5px;
}
</style>
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/head.jsp"%>
	</header>
	<section>
		<div class="container">
		<div class="ch_top_box">
		<h3>1:1문의</h2>
		</div><!--ch_top_box  -->
		</div><!--container  -->
		<div class="container2">
		<div class="send_list">
		<c:forEach var="index" begin="0" end="10">
		<%
		for(int i = 0; i<=10;i++){
		%>
		<details>
			<summary>test_title</summary>
			<span>test</span>
		</details>
		<%
		}
		%>
		</c:forEach>
		</div><!--send_list  -->
		<div class="ch_box">
		<div class="ch_view"></div>
		<div class="ch_write">
		<input type="text" placeholder="내용을 입력 하세요"><button>전송</button>
		</div><!--ch_write  -->
		</div><!--ch_box  -->
		</div><!--container2  -->
	</section>
	<footer> 
	<%@include file="/WEB-INF/views/foot.jsp" %>
	</footer>
</body>
</html>