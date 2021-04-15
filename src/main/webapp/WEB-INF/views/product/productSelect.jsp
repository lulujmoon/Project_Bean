<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootstrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h2>Product Select</h2>
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
			</thead>
			<tbody>
					<tr>
						<td>${dto.productNum}</td>
						<td>${dto.name}</td>
						<td>${dto.category}</td>
						<td>${dto.subtitle}</td>
						<td>${dto.includes}</td>
						<td>${dto.contents}</td>
						<td>${dto.details}</td>
						<td>${dto.cartInfo}</td>
					</tr>
			</tbody>
		</table>
		<h4>옵션</h4>
		<table>
				<c:forEach items="${dto.options}" var="option">
					<tr>
						<td>${option.optionNum}</td>
						<td>${option.productNum}</td>
						<td>${option.optionInfo}</td>
						<td>${option.type}</td>
						<td>${option.grind}</td>
						<td>${option.price}</td>
						<td>${option.discountRate}</td>
						<td>${option.stock}</td>
					</tr>
				</c:forEach>
		</table>
		<h4>파일</h4>
		<table>
				<c:forEach items="${dto.files}" var="file">
					<tr>
						<td>${file.fileNum}</td>
						<td>${file.fileName}</td>
						<td>${file.originName}</td>

					</tr>
				</c:forEach>
		</table>
		
		<a href="./productUpdate?num=${dto.productNum}">Update</a>
		<a href="./productDelete?num=${dto.productNum}">Delete</a>
	</div>
</body>
</html>