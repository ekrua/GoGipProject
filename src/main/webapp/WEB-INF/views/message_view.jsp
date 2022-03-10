<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>	
body{
	font-size: 18px;
}
textarea{
	width: 445px;
	height: 370px;
	resize: none;
	border-radius: 10px;
	overflow: auto;
	font-size: 15px;
	padding: 10px;
}
textarea:focus{
	outline: none;
}
button:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}
button{
	width: 120px;
	height: 50px;
	border-radius: 5px;
}
#delete{
	margin-left: 227px;
}
</style>
<script>
$(function(){
	$("re_write").click(function(){
		
		location.href='message.do';
	});
	$("#delete").click(function(){

	});
});
</script>
<body>
	<p><textarea readonly></textarea></p>
	<button type="button" class="re_write">답변하기</button><button type="button" id="delete">삭제하기</button>
</body>
</html>