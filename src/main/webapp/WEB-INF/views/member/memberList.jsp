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
	
	<div class="container memberlist col-md-8">
	<h2>Member List page</h2>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th>ID</th>
				<th>개인 정보</th>
				<th>주문 내역</th>
				<th>문의 내역</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="list">
		<!-- list에서 하나 꺼내서 dto에 담는 것을 반복한다. -->
			<tr>
				<td>${list.id}</td>
				<td><a href="../member/adminUpdate?id=${list.id}">수정</a></td>
				<td><a href="../member/memberOrder?id=${list.id}">주문 내역 확인</a></td>
				<td><a href="../member/memberQna">문의 내역 확인</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>

</body>
</html>