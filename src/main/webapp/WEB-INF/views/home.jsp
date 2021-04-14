<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

	<title>Home</title>
<c:import url="./template/bootstrap.jsp"></c:import>	
</head>
<body>
<c:import url="./template/header.jsp"></c:import>
<div class="container">
	
	<h1>
	Hello world!  
	</h1>

	<P>  The time on the server is ${serverTime}. </P>
</div>

</body>
</html>
