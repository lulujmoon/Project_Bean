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
	<div class="container" style="margin-bottom: 200px;margin-top: 100px">
		<h2>Product Select</h2>
		<table class="table table-hover">
					<tr>
						<td>No</td>
						<td>${dto.productNum}</td>
					</tr>
					<tr>
						<td>Name</td>	
						<td>${dto.name}</td>
					</tr>
					<tr>
						<td>Category</td>
						<td>${dto.category}</td>
					</tr>
					<tr>
						<td>Subtitle</td>
						<td>${dto.subtitle}</td>
					</tr>
					<tr>
						<td>Includes</td>
						<td>${dto.includes}</td>
					</tr>
					<tr>
						<td>Contents</td>
						<td>${dto.contents}</td>
					</tr>
					<tr>
						<td>Details</td>
						<td>${dto.details}</td>
					</tr>
					<tr>
						<td>CartInfo</td>
						<td>${dto.cartInfo}</td>
					</tr>
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
		<a href="./optionUpdate" class="btn btn-warning btn-sm">옵션 관리</a>
		<h4>썸네일</h4>
		<table>
					<tr>
						<td>${dto.file.fileNum}</td>
						<td>${dto.file.fileName}</td>
						<td>${dto.file.originName}</td>
					</tr>
		</table>
		
		<a href="./productUpdate?productNum=${dto.productNum}" class="btn btn-primary btn-sm">Update</a>
		<a href="./productDelete?productNum=${dto.productNum}" class="btn btn-danger btn-sm">Delete</a>
	</div>
</body>
</html>