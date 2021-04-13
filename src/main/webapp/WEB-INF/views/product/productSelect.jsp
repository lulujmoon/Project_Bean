<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	</div>
</body>
</html>