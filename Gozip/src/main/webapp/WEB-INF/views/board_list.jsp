<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리방 보다 힙한건 없다. GoZip</title>
<style type="text/css">

ul, li {
    list-style: none;
    font-weight: bold;
}

a {
    text-decoration: none;
    color: inherit;
}

.board_wrap {
    width: 1000px;
    margin: 100px auto;
}

.board_title p {
   margin-right: 100px;
    margin-top: 5px;
    font-size: 0.8rem;
}


.bt_wrap {
    margin-top: 30px;
    text-align: center;
    font-size: 0;
}

button, input, #kind {
    display: inline-block;
    min-width: 80px;
    margin-left: 10px;
    padding: 10px;
    border: 1px solid #000;
    border-radius: 30px;
    font-size: 1rem;
}

.board_list {
    width: 100%;
    border-top: 2px solid #000;
}

.board_list > div {
    border-bottom: 1px solid #ddd;
    font-size: 0;
}

.board_list > div.top {
    border-bottom: 1px solid #999;
}

.board_list > div:last-child {
    border-bottom: 1px solid #000;
}

.board_list > div > div {
    display: inline-block;
    padding: 15px 0;
    text-align: center;
    font-size: 0.9rem;
    font-size-adjust: inherit;
    font-weight: bold;
    vertical-align: middle;
    
}

.board_list > div.top > div {
    font-weight: 600;
}

.board_list .num {
    width: 10%;
}

.board_list .title {
    width: 40%;
    text-align: left;
}

.board_list .top .title {
    text-align: center;
}

.board_list .writer {
    width: 10%;
}

.board_list .date {
    width: 15%;
}

.board_list .count {
    width: 12%;
}

.board_page {
   margin-top: 10px;
   font-weight: bold;
   padding: 10px;
   text-align: center;
}

.board_view {
    width: 100%;
    border-top: 2px solid #000;
}

.board_view .title {
    padding: 20px 15px;
    border-bottom: 1px dashed #ddd;
    font-size: 2rem;
}

.board_view .info {
    padding: 15px;
    border-bottom: 1px solid #999;
    font-size: 0;
}

.board_view .info dl {
    position: relative;
    display: inline-block;
    padding: 0 20px;
}

.board_view .info dl:first-child {
    padding-left: 0;
}

.board_view .info dl::before {
    content: "";
    position: absolute;
    top: 1px;
    left: 0;
    display: block;
    width: 1px;
    height: 13px;
    background: #ddd;
}

.board_view .info dl:first-child::before {
    display: none;
}

.board_view .info dl dt,
.board_view .info dl dd {
    display: inline-block;
    font-size: 1.4rem;
}

.board_view .info dl dt {

}

.board_view .info dl dd {
    margin-left: 10px;
    color: #777;
}

.board_view .cont {
    padding: 15px;
    border-bottom: 1px solid #000;
    line-height: 160%;
    font-size: 1.4rem;
}

.board_write {
    border-top: 2px solid #000;
}

.board_write .title,
.board_write .info {
    padding: 15px;
}

.board_write .info {
    border-top: 1px dashed #ddd;
    border-bottom: 1px solid #000;
    font-size: 0;
}

.board_write .title dl {
    font-size: 0;
}

.board_write .info dl {
    display: inline-block;
    width: 50%;
    vertical-align: middle;
}

.board_write .title dt,
.board_write .title dd,
.board_write .info dt,
.board_write .info dd {
    display: inline-block;
    vertical-align: middle;
    font-size: 1.4rem;
}

.board_write .title dt,
.board_write .info dt {
    width: 100px;
}

.board_write .title dd {
    width: calc(100% - 100px);
}

.board_write .title input[type="text"],
.board_write .info input[type="text"],
.board_write .info input[type="password"] {
    padding: 10px;
    box-sizing: border-box;
}

.board_write .title input[type="text"] {
    width: 80%;
}

.board_write .cont {
    border-bottom: 1px solid #000;
}

.board_write .cont textarea {
    display: block;
    width: 100%;
    height: 300px;
    padding: 15px;
    box-sizing: border-box;
    border: 0;
    resize: vertical;
}
nav { background: #dcdcdc; }

nav ul {
  font-size: 0;
  margin: 0;
  padding: 0;
}

nav ul li {
  display: inline-block;
  position: relative;
}

nav ul li a {
  color: black;
  display: block;
  font-size: 14px;
  padding: 15px 14px;
  transition: 0.3s linear;
}

nav ul li:hover { background: #126d9b; }

nav ul li ul {
  border-bottom: 5px solid #2ba0db;
  display: none;
  position: absolute;
  width: 250px;
}

nav ul li ul li {
  border-top: 1px solid #444;
  display: block;
}

nav ul li ul li:first-child { border-top: none; }

nav ul li ul li a {
  background: #373737;
  display: block;
  padding: 10px 14px;
}

nav ul li ul li a:hover { background: #126d9b; }

li:nth-child(3){
   margin-left: 600px;
}

.search {
   margin-left: 350px;
    position: relative;
    text-align: center;
    width: 400px;
    margin: 0 auto;
}
.search input {
    width: 40%;
    border-radius: 20px;
    border: 1px solid #bbb;
    padding: 12px 10px;
}
</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
   $(function() {
      $("#btnSearch").click(
            function() {
               var data = "kind=" + $("#kind").val() + "&search="
                     + $("#txtSearch").val();
               location.href = "search.do?" + data;
            });
   });
   
   $('nav li').hover(
           function() {
             $('ul', this).stop().slideDown(200);
           },
             function() {
             $('ul', this).stop().slideUp(200);
           }
   );
</script>
</head>
<header>
<%@include file="/WEB-INF/views/head.jsp" %>
</header>
<body>
   <c:if test="${sessionScope.member.id==null}">
      <script>
         alert('로그인해야 이용하실수 있습니다.');
         location.href = '/';
      </script>
   </c:if>
<div class="board_wrap">
<nav>
  <div class="container">
    <ul>
      <li><a href="redirect.do">Home</a></li>
      <li><a href="#">공지사항</a></li>
      <li><a href="boardreset.do">초기화</a></li>
      <li><a href="writeView.do">게시글 등록</a></li>
    </ul>
  </div>
</nav>
<div class="content">
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                    <div class="count">좋아요</div>
                </div>
                <c:forEach var="board" items="${requestScope.list}"><div>
            <div class="num">${board.b_no}</div>
            <div class="title"><a href="boardView.do?bno=${board.b_no}">${board.b_title}</a></div>
            <div class="writer">${board.b_writer}</div>
            <div class="date">${board.b_date}</div>
            <div class="count">${board.b_count}</div>
            <div class="count">${board.b_like}</div>
            </div>
            </c:forEach>
            </div>
            <c:if test="${requestScope.pagging!=null}">
         <div class="board_page">
            <div><c:if test="${requestScope.pagging.isPriviousPageGroup() }">
                  <a href="board.do?page=${requestScope.pagging.getStartPageofPageGroup()-1 }">◀</a> &nbsp;
                  </c:if> <c:forEach var="i"
                  begin="${requestScope.pagging.getStartPageofPageGroup() }"
                  end="${requestScope.pagging.getEndPageOfPageGroup() }">
                  <c:choose>
                     <c:when test="${i==requestScope.pagging.currentPageNo }">
                  ${i}&nbsp;
               </c:when>
                     <c:otherwise>
                        <a href="board.do?page=${i }">${i }</a>&nbsp;
               </c:otherwise>
                  </c:choose>
               </c:forEach> <c:if test="${requestScope.pagging.isNextPageGroup() }">
                  <a
                     href="board.do?page=${requestScope.pagging.getEndPageOfPageGroup()+1}">▶</a>
               </c:if></div>
         </div>
      </c:if>
      <br>
         <div class="search"><select id="kind">
               <option value="id">아이디</option>
               <option value="title">제목</option>
               <option value="content">내용</option>
         </select> <input type="text" id="txtSearch">
         <button id="btnSearch">검색</button></div>
        </div>
    </div>
    <footer>
        <%@include file="/WEB-INF/views/foot.jsp" %>
    </footer>
</body>
</html>










