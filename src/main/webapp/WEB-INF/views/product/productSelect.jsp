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
		<h2 style="display: inline-block;margin:10px">Product Select</h2>
		<a href="./productDelete?productNum=${dto.productNum}" class="btn btn-danger btn-sm" style="float:right;margin-top:15px;margin-left:5px">Delete</a>
		<a href="./productUpdate?productNum=${dto.productNum}" class="btn btn-secondary btn-sm" style="float:right;margin-top:15px">Update</a>
		
		<table class="table table-hover">
			<tr>
				<td>Num</td>
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
				<td><ul  id="inc"></ul></td>
			</tr>			
			<tr>
				<td>Contents</td>
				<td>${dto.contents}</td>
			</tr>
			<tr>
				<td>Details</td>
				<td><ul id="dtl"></ul></td>
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
			
		<a href="./optionUpdate?productNum=${dto.productNum}" class="btn btn-secondary btn-sm">Update</a>
		
		<h4>파일</h4>
		<table>
					<tr>
						<td>${dto.file.fileNum}</td>
						<td>${dto.file.fileName}</td>
						<td>${dto.file.originName}</td>
					</tr>
		</table>
		

		
	</div>
	<div style="margin-bottom:100px"></div>
	
	<script type="text/javascript">
		let txt = '${dto.includes}';
		let start = 0;
	 	let check = txt.indexOf('/', start)!=-1;
	 	
	 	while(check){
			let end = txt.indexOf('/', start);
			let opt = txt.substring(start, end);
			$("#inc").append("<li>"+opt+"</li>");
			
			start = end+1;
			
			if(txt.indexOf('/', end+1)==-1){
				opt = txt.substring(end+1);
				$("#inc").append("<li>"+opt+"</li>");
				check=false;
			}
		}
	 	
		txt = '${dto.details}';
		start = 0;
	 	check = txt.indexOf('/', start)!=-1;
	 	
	 	while(check){
			let end = txt.indexOf('/', start);
			let opt = txt.substring(start, end);
			$("#dtl").append("<li>"+opt+"</li>");
			
			start = end+1;
			
			if(txt.indexOf('/', end+1)==-1){
				opt = txt.substring(end+1);
				$("#inc").append("<li>"+opt+"</li>");
				check=false;
			}
		}
	</script>
	
	<!-- <script type="text/javascript" src="../resources/jquery/productSelect.js"></script> -->
</body>
</html>