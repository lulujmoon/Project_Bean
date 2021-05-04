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
						<th scope="col">주문일자<br>[주문번호]
						</th>
						<th scope="col">상품정보</th>
						<th scope="col">수량</th>
						<th scope="col">상품구매금액</th>
						<th scope="col">주문처리상태</th>
						<th scope="col">취소/교환/반품</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="list">
					<tbody>
						<tr>
							<td scope="col">${list.order.orderDate}<br> <a
								href="${pageContext.request.contextPath}/member/memberOrderDetail?orderUid=${list.order.orderUid}">[
									${list.order.orderUid} ]</a>
							</td>
							<td scope="col"><a
								href="${pageContext.request.contextPath}/product/productList?productNum=${list.product.productNum}">${list.order.orderName}
									<br> ${list.detail.grind}
							</a></td>
							<td scope="col">${list.detail.quantity}</td>
							<td scope="col">${list.detail.finalPrice}</td>
							<td scope="col">${list.detail.shippingState}</td>
							<td scope="col"></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>

	</div>

</body>
</html>