<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	
<h1>매거진</h1>

<c:forEach items="${list}" var="dto">
${dto.num}
<a href="./magazineSelect?num=${dto.num}">${dto.title}</a>
${dto.subTitle}
${dto.contents}
<img src="../resources/upload/magazineT/${dto.ListImage.fileName}">
</c:forEach>




<a href="./magazineInsert">인서트</a>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>