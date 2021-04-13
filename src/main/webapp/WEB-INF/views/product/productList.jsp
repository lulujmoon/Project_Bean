<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>

	<div class="container">
		<h2>Product List</h2>
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
				<c:forEach items="${list}" var="dto">
					<tr>
						<td><a href="./productSelect?num=${dto.num}">${dto.num}</a></td>
						<td>${dto.name}</td>
						<td>${dto.category}</td>
						<td>${dto.summary}</td>
						<td>${dto.info}</td>
						<td>${dto.cartInfo}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</div>

</body>
</html>