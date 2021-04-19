<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/setting.jsp"></c:import>
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
			</thead>
			<tbody>
				<c:forEach items="${list}" var="product">
					<tr>
						<td><a href="./productSelect?productNum=${product.productNum}">${product.productNum}</a></td>
						<td>${product.name}</td>
					</tr>
					<tr>
						<td>
							<div style="width:300px;height:300px;overflow:hidden">
								<img alt="thumbnail" src="../resources/upload/product/${product.thumbnail.fileName}" style="width:100%;height:100%">
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="./productInsert" class="btn btn-warning" style="float:right">Add</a>
	</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>