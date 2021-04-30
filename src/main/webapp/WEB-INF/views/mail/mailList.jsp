<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>mailList</h1>
<div>
<c:forEach items="${list}" var="dto" >
<h3>${dto.mAddr}</h3>
</c:forEach>

<a href="./sendMail">보내기</a>
</div>
</body>
</html>