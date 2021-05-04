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
<div class="admin col-md-10">
	<h3>Order List Page</h3>
</div>

	<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
		<div class="title" style="width: 1110px; height: 359px;">
			<table class="table border border-0">
				<thead>
					<tr>
						<th scope="col">주문일자<br>[주문번호]</th>
						<th scope="col">아임포트 번호</th>		
						<th scope="col">주문자</th>
						<th scope="col">결제 상태</th>
						<th scope="col">취소/교환/반품</th>
					</tr>
					<c:forEach items="${list}" var="list">
						<tbody>
							<tr>
								<td scope="col">${list.orderDate}<br>
								<a href="${pageContext.request.contextPath}/member/memberOrderDetail?id=${list.id}">
								[ ${list.orderUid} ]</a>
								</td>
								<td scope="col">${list.impUid}</td>
								<td scope="col">${list.id}</td>
								<td scope="col">${list.payState}</td>
								<td scope="col"></td>
							</tr>
						</tbody>
					</c:forEach>
				</thead>
			</table>
		</div>
	</div>

</body>
</html>