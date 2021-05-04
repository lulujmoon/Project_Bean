<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/admin.css">
</head>

<body>
	<c:import url="../template/adminheader.jsp"></c:import>
	
	<div class="container list col-md-8">
	<h2>회원 목록</h2>
	<hr>
	
	<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
		<div class="title" style="width: 1110px; height: 359px;">
			<table class="table border border-0">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">개인 정보</th>		
						<th scope="col">주문 내역</th>
						<th scope="col">문의 내역</th>
					</tr>
					<c:forEach items="${list}" var="list">

						<tr>
							<td scope="col">${list.id}</td>
							<td scope="col"><a href="../member/adminUpdate?id=${list.id}">수정</a></td>
							<td scope="col"><a href="../member/memberOrder?id=${list.id}">주문 내역 확인</a></td>
							<td scope="col"><a href="../member/memberQna">문의 내역 확인</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>
	</div>
</body>
</html>