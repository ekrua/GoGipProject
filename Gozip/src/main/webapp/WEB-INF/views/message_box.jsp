<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
margin: 0px auto;
padding: 0px auto;
}
section{
}
table{
margin: 0px auto;
margin-top: 70px;
width: 800px;
text-align: center;
border-collapse: collapse;
}
th{
border: 1px solid black;
background-color: #f5f5dc;
}
#head th:nth-child(1){
	padding:5px;
	width: 10%;
}
#head th:nth-child(2){
	width: 40%;
}
#head th:nth-child(3){
	width: 15%;
}
#head th:nth-child(4){
	width: 15%;
}
caption {
text-align: left;
}
caption a{
	margin-left:600px; 
	font-size: 12px;
}
td{
border-bottom: 1px solid gray;
}
</style>
<body>
<header>
		<%@ include file="/WEB-INF/views/head.jsp"%>
	</header>
	<section>
		<table>
		<caption><b>수신 메세지 함</b><a href="/">송신 메세지함</a></caption>
			<tr id="head">
				<th>메세지 번호</th>
				<th>제목</th>
				<th>보낸 사람</th>
				<th>보낸 날짜</th>
			</tr>
			<c:forEach var="index" begin="0" end="10">
			<tr>
				<td>1</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
			</tr>
			</c:forEach>
		</table>
	</section>
	<footer> 
	<%@include file="/WEB-INF/views/foot.jsp" %>
	</footer>
</body>
</html>