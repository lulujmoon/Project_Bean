<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<div class="container">
<h1>Qna select Page</h1>

<h3>${dto.title}</h3>
<h3>${dto.writer}</h3>
<h3>${dto.contents}</h3>
<div>
<c:forEach items="${dto.boardFiles}" var="file">
	<a href="../resources/upload/qna/${file.fileName}">${file.origineName}</a>
</c:forEach>
</div>
<a href="./qnaUpdate?num=${dto.num}"><button type="button" class="btn btn-info">수정</button></a>

<a href="./qnaDelete?num=${dto.num}" id="del" class="btn btn-info">삭제</a>

<a href="./qnaReply?num=${dto.num}" class="btn btn-primary">답글</a>
</div>

</body>
</html>