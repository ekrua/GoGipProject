<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>
*{
margin: 0px auto;
padding: 0px auto;
}
section{
margin: 0px auto;
width: 800px;
}
table {
	box-sizing: border-box; 
	border-spacing: 50px;
	border-collapse: separate;
}
td{
	border: 1px solid black;
	margin: 30px;
	padding: 10px;
	border-radius: 15px;
	width: 200px;
	height: 200px;
	vertical-align: top;
	box-shadow: 2px 2px 4px;
}
caption{
	margin-top:30px;
	font-size: 24px;
	text-align: center;
	font-weight: bold;
}
td p:nth-child(1){
	padding-bottom: 5px;
	border-bottom: 1px solid black;
}
td p:nth-child(2){
	padding-bottom: 10px;
}
td:hover{
	transform: scale(1.2);
	box-shadow: 3px 3px 6px;

}
section div{
	text-align: center;
}
</style>
<script>
	$(function(){
		$("td").click(function(){
			var url = "message_view.do";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
		});

	});
</script>
<body>
<header>
	<%@include file="/WEB-INF/views/head.jsp" %>
	</header>
	<section>
	<table>
		<caption>송신 메세지함</caption>
		<tr>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
		</tr>
		<tr>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
		</tr>
		<tr>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
			<td><p>제목</p><p>보낸 일자</p><p>받은 사람</p></td>
		</tr>
	</table>
	<div class="page">페이징 처리</div>
	</section>
	<footer> 
	<%@include file="/WEB-INF/views/foot.jsp" %>
	</footer>
</body>
</html>