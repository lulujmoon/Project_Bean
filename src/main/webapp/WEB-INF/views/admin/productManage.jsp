<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/admin.css">
<title>Bean Bean Coffee</title>
</head>
<body>
<c:import url="../template/adminheader.jsp"></c:import>
	<div class="container list col-md-8">
	<h2>상품 관리</h2>
	<hr>
	
	<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
		<div class="title" style="width: 1110px; height: 359px;">
			<table class="table border border-0">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">상품명</th>		
						<th scope="col">옵션 관리</th>
						<th scope="col">수정</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="product">
						<tr>
							<td>${product.productNum}</td>
							<td><a href="${pageContext.request.contextPath}/product/productList?productNum=${product.productNum}">${product.name}</a></td>
							<td><a href="${pageContext.request.contextPath}/product/optionManage?productNum=${product.productNum}">옵션 관리</a></td>
							<td><a href="${pageContext.request.contextPath}/product/productUpdate?productNum=${product.productNum}">수정</a></td>
							<td><span class="del-btn" title="${product.productNum}" style="cursor:pointer">삭제</span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
<script type="text/javascript">
	$(".del-btn").click(function(){
		let con = confirm("정말 삭제하시겠습니까?");
		if(con){
			let productNum = $(this).attr("title");
			$.ajax({
				url: "../product/productDelete",
				type: "POST",
				data: {productNum:productNum},
				success: function(result){
					alert("삭제되었습니다.");
					href.reload();
				},
				error: function(){
					alert("주문 기록이 있는 상품이므로 삭제할 수 없습니다.");
				}
			})
		}
	})
</script>
</body>
</html>