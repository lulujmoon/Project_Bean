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
	<div class="container">
		<h2>Product Select</h2>
		<table class="table table-hover">
			<thead>
				<th>No</th>
				<th>Name</th>
				<th>Category</th>
				<th>Summary</th>
				<th>Info</th>
				<th>CartInfo</th>
			</thead>
			<tbody>
					<tr>
						<td>${dto.num}</td>
						<td>${dto.name}</td>
						<td>${dto.category}</td>
						<td>${dto.summary}</td>
						<td>${dto.info}</td>
						<td>${dto.cartInfo}</td>
					</tr>
			</tbody>
		</table>
		
		<table>
			<thead>
				<th>type</th>
				<th>grind</th>
				<th>price</th>
				<th>discountRate</th>
				<th>stock</th>
			</thead>
			<tbody>
				<c:forEach items="${dto.options}" var="option">
					<tr>
						<td>${option.type}</td>
						<td>${option.grind}</td>
						<td>${option.price}</td>
						<td>${option.discountRate}</td>
						<td>${option.stock}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<a href="./productUpdate?num=${dto.num}">Update</a>
		<a href="./productDelete?num=${dto.num}">Delete</a>
	</div>
</body>
</html>