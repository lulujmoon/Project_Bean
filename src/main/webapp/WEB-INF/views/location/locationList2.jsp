<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../resources/css/style.css">
<!-- <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">

<%-- <c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title> --%>
<title>Bean Brothers Coffee</title>
</head>
<body>
<%-- 	<c:import url="../template/header.jsp"></c:import> --%>
<!-- SCRIPTS -->

<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/custom.js"></script>

	<!-- Table -->
	<div class="container">
		<h2>Location List Page</h2>
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Store Name</th>
				</tr>
			</thead>
			<tbody>
				<!-- 테이블 반복문 -->
				<c:forEach items="${list}" var="dto">
				
				<tr>
					<td><a href="./locationSelect?storeName=${dto.storeName}">${dto.storeName}</a></td>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</div>
</body>
</html>