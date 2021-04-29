<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>passwordpage</h1>
<form id="frm" action="./qnaPassword" method="post">
	<input type="hidden" name="num" value="${param.num}">
	
<input type="text" name="writer" value="${dto.writer}" readonly="readonly">
<input type="text" name="ref" value="${dto.ref}" readonly="readonly">

<input type="password" id="pw" name="pw">

<input type="submit" id="btnPass" value="submit" class="btn btn-success">
</form>
</body>
</html>