<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

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