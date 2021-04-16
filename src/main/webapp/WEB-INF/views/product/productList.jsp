<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootstrap.jsp"></c:import>
<title>Product List</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h2 style="text-align: center">Product List</h2>
		<table class="table table-hover">
			<thead>
				<th>No</th>
				<th>Name</th>
				<th>Category</th>
				<th>Subtitle</th>
				<th>Includes</th>
				<th>Contents</th>
				<th>Details</th>
				<th>CartInfo</th>
				<th>Grinds</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td><a href="./productSelect?productNum=${dto.productNum}">${dto.productNum}</a></td>
						<td>${dto.name}</td>
						<td>${dto.category}</td>
						<td>${dto.subtitle}</td>
						<td>${dto.includes}</td>
						<td>${dto.contents}</td>
						<td>${dto.details}</td>
						<td>${dto.cartInfo}</td>
						<td>${dto.grinds}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="./productInsert" class="btn btn-warning" style="float:right">Add</a>
	</div>

</body>
</html>