<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<c:import url="./template/bootStrap.jsp"></c:import>

<title>Home</title>

</head>
<body>
<c:import url="./template/header.jsp"></c:import>
	<h1>Project_Bean!</h1>

	<P>The time on the server is ${serverTime}.</P>

<c:import url="./member/memberLogin.jsp"></c:import>
<c:import url="./member/memberJoin.jsp"></c:import>
	
	

</body>
</html>
