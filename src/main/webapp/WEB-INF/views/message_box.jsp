<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>
* {
	margin: 0px;
	padding: 0px;
}

section {
	margin: 0px auto;
	width: 1100px;
	margin-top: 30px;
}

table {
	box-sizing: border-box;
	border-spacing: 50px;
	border-collapse: separate;
	width: 100%;
	align-content: center;
	overflow:hidden;
}

caption>a {
	font-size: 24px;
	font-weight: bold;
}

td {
	border: 1px solid black;
	padding: 10px;
	border-radius: 15px;
	width:250px;
	height: 250px;
	float:left;
	vertical-align: top;
	box-shadow: 0 10px 20px 0 rgb(150 153 159/ 70%);
}

table #first{
	background-color: #e9e9e9;
	width: 1000px;
	height: 5px;
	padding: 0px;
	border-radius: 5px;
	border: none;
}

td p:nth-child(1) {
	padding-bottom: 5px;
	border-bottom: 1px solid black;
}

td p:nth-child(2) {
	padding-bottom: 10px;
	font-size: 14px;
}

.m_tr:hover {
	transform: scale(1.2);
	box-shadow: 3px 3px 6px;
}

.m_tr{
	float:left;
	margin:30px;
      }
</style>
<script>
	$(function() {
		$("td").click(function() {
			var url = "message_view.do";
			var option = "width = 500, height = 500, top = 100, left = 200, location = no";
			window.open(url, name, option);
			});
	});
</script>
<body>
	<c:if test="${sessionScope.member == null}">
		<script>
			alert('로그인해야 이용하실수 있습니다');
			location.href = '/';
		</script>
	</c:if>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<section>
		<table>
			<c:if test="${requestScope.mode == 'rv' }">
				<caption>
					<a href='message_box.do?mode=send'>수신 메세지함</a>
				</caption>
			</c:if>
			<c:if test="${requestScope.mode == 'send' }">
				<caption>
					<a href='message_box.do?mode=rv'>송신 메세지함</a>
				</caption>
			</c:if>
			<tr>
				<td colspan="3" id="first"></td>					
			</tr>
			<c:forEach var="message" items="${requestScope.list}">
				
				<tr class="m_tr">
					<td>
					<c:if test="${requestScope.mode == 'rv' }">
								<p>보낸 사람: ${message.rv_id }</p>
								<p>보낸 시간: ${message.m_date }</p>
								<p>${message.m_content }</p>
						</c:if> 
						<c:if test="${requestScope.mode == 'send' }">
								<p>받은 사람: ${message.send_id }</p>
								<p>받은 시간: ${message.m_date }</p>
								<p>${message.m_content }</p>
						</c:if>
						</td>
				</tr>
			</c:forEach>
				
				
		</table>
		<c:if test="${requestScope.mode =='rv' }">
			<div class="message_box.do">
				<div>
					<c:if test="${requestScope.pagging.isPriviousPageGroup() }">
						<a
							href="message_box.do?page=${requestScope.pagging.getStartPageofPageGroup()-1 }&mode=rv">◀</a> &nbsp;
                  </c:if>
					<c:forEach var="i"
						begin="${requestScope.pagging.getStartPageofPageGroup() }"
						end="${requestScope.pagging.getEndPageOfPageGroup() }">
						<c:choose>
							<c:when test="${i==requestScope.pagging.currentPageNo }">
                  ${i}&nbsp;
               </c:when>
							<c:otherwise>
								<a href="message_box.do?page=${i }&mode=rv">${i }</a>&nbsp;
               </c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${requestScope.pagging.isNextPageGroup() }">
						<a
							href="message_box.do?page=${requestScope.pagging.getEndPageOfPageGroup()+1}&mode=rv">▶</a>
					</c:if>
				</div>
			</div>
		</c:if>
		<c:if test="${requestScope.mode =='send' }">
			<div class="message_box.do">
				<div>
					<c:if test="${requestScope.pagging.isPriviousPageGroup() }">
						<a
							href="message_box.do?page=${requestScope.pagging.getStartPageofPageGroup()-1 }&mode=send">◀</a> &nbsp;
                  </c:if>
					<c:forEach var="i"
						begin="${requestScope.pagging.getStartPageofPageGroup() }"
						end="${requestScope.pagging.getEndPageOfPageGroup() }">
						<c:choose>
							<c:when test="${i==requestScope.pagging.currentPageNo }">
                  ${i}&nbsp;
               </c:when>
							<c:otherwise>
								<a href="message_box.do?page=${i }&mode=send">${i }</a>&nbsp;
               </c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${requestScope.pagging.isNextPageGroup() }">
						<a
							href="message_box.do?page=${requestScope.pagging.getEndPageOfPageGroup()+1}&mode=send">▶</a>
					</c:if>
				</div>
			</div>
		</c:if>
	</section>
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>