<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean Bean Coffee</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/qnaPassword.css">
</head>

<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
<div class="textP">
<h>비밀번호</h>
</div>
<div class="PassBox">
<form id="frm" action="./qnaPassword" method="post">
	<input type="hidden" name="num" value="${param.num}">
	<div id="password">
	<input type="password" id="pw" name="pw">
	</div>
	
	<button type="submit" value="확인" id="submit" class="btn underline-hover-btn">확인</button>
</form>
</div>


</div>
	<c:import url="../template/footer.jsp"></c:import>		
	<script type="text/javascript" src="../resources/jquery/qnaPassword.js"></script>
</body>
</html>