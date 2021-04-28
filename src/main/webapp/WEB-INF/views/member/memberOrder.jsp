<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/mypage.css">
<c:import url="../template/setting.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="wrapper container" style="display: block;">
		<div id="title">
			<div id="title-container">
				<div class="text-title">
					<a href="${pageContext.request.contextPath}/member/memberPage"><span
						class="en">MY PAGE</span></a>
				</div>
				<br>

				<div class="text-line"></div>
				<br>

				<nav id="title-nav">
					<a href="${pageContext.request.contextPath}/member/memberUpdate"><span
						class="ko">회원정보</span></a> | <a
						href="${pageContext.request.contextPath}/member/memberOrder"><span
						class="ko">주문내역</span></a> | <a
						href="${pageContext.request.contextPath}/member/memberSubscrip"><span
						class="ko">정기/간편주문</span></a> | <a
						href="${pageContext.request.contextPath}/member/memberPoint?id=${member.id}"><span
						class="ko">포인트</span></a> | <a
						href="${pageContext.request.contextPath}/member/memberQna"><span
						class="ko">문의</span></a>
				</nav>
			</div>
		</div>
		<!-- </div> 1개 -->


		<div id="content" class="cafe-content">
			<div id="write-order-info-wrapper" class="bb-form"
				style="padding-bottom: 40px;">

				<div class="mypage-section-title">주문내역</div>

				<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
					style="padding-bottom: 40px;">
					<ul id="mobileOrderList" class="my-subscribe"
						style="border-top: 1px solid #ccc;"></ul>

					<div class="mypage-anotherorder">
						<div class="mypage-anotherorder-subscription">




							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">

								<div class="title" style="width: 1170px; height: 359px;">
											
											<table class="table border border-0">
	<%-- 								<colgroup>
										<col style="width: 135px; height: 75px;">
										<col style="width: auto;">
										<col style="width: 61px;">
										<col style="width: 111px;">
										<col style="width: 111px;">
										<col style="width: 111px;">
									</colgroup> --%>
									<thead>
										<tr>
											<th scope="col">주문일자<br>[주문번호]</th>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">상품구매금액</th>
											<th scope="col">주문처리상태</th>
											<th scope="col">취소/교환/반품</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="order">
									<tbody>
										<tr>
											<td scope="col">${order.orderDate}<br>
											[ ${order.orderUid} ]
											</td>
											<td scope="col"><a href="${pageContext.request.contextPath}/product/productList/${order.product.productNum}">${order.product.name}</a></td>
											<td scope="col">${order.quantity}</td>
											<td scope="col">${order.finalPrice}</td>
											<td scope="col">${order.shippingState}</td>
											<td scope="col"> </td>
										</tr>
									</tbody>
									</c:forEach>
								</table>
							</div>
									
								</div>

						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>