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
	
	<h1>Option Test</h1>
	
	<input type="text" id="txt">
	<input type="button" id="btn" value="add">
	<select id="sel">
	
	</select>
	

</div>
<script type="text/javascript" src="./resources/jquery/optionTest.js"></script>
</body>
</html>
