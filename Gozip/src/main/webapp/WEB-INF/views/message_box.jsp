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
margin: 0px auto;
width: 800px;
}
table {
	width: 800px;
	height: 800px;
	box-sizing: border-box; 
}
</style>
<body>
<header>
		<%@ include file="/WEB-INF/views/head.jsp"%>
	</header>
	<section>
	<table>
		<tr>
			<td><div></div> </td>
		</tr>
		<tr>
			<td><p>내용</p><p>보낸일자</p><p>내용</p></td>
			<td><p>내용</p><p>보낸일자</p><p>내용</p></td>
			<td><p>내용</p><p>보낸일자</p><p>내용</p></td>
		</tr>
		<tr>
			<td><p>내용</p><p>보낸일자</p><p>내용</p></td>
			<td><p>내용</p><p>보낸일자</p><p>내용</p></td>
			<td><p>내용</p><p>보낸일자</p><p>내용</p></td>
		</tr>
	</table>
	</section>
	<footer> 
	<%@include file="/WEB-INF/views/foot.jsp" %>
	</footer>
</body>
</html>