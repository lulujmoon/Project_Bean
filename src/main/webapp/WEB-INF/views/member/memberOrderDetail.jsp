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

				<div class="mypage-section-title">주문상세조회</div>

				<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
					style="padding-bottom: 40px;">
					<ul id="mobileOrderList" class="my-subscribe"
						style="border-top: 1px solid #ccc;"></ul>

					<div class="mypage-anotherorder">
						<div class="mypage-anotherorder-subscription">

							<!-- 주문정보 -->
							<div class="orderArea">
								<div class="title">
									<h3>주문정보</h3>
								</div>

								<div class="ec-base-table">
									<c:forEach items="${list}" var="order">
										<table class="table border border-0">
											<caption>주문정보</caption>
											<colgroup>
												<col style="width: 160px">
												<col style="width: auto">
											</colgroup>

											<tbody>
												<tr>
													<th scope="row">주문번호</th>
													<td>${order.orderUid}<span></span>
													</td>
												</tr>
												<tr>
													<th scope="row">주문일자</th>
													<td>${order.orderDate}</td>
												</tr>
												<tr>
													<th scope="row">주문자</th>
													<td><span> </span></td>
												</tr>
												<tr>
													<th scope="row">주문처리상태</th>
													<td>${order.shippingState}<input type="image"
														src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cancel.gif"
														alt="주문취소" class="displaynone"> &nbsp;<span
														class="displaynone"> <a href="#none"
															onclick="window.open('/myshop/order/escrow.html?order_id=20210323-0008723', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"></a></span>
													</td>
												</tr>
											</tbody>
										</table>
									</c:forEach>
								</div>
							</div>


							<!-- 결제 정보 -->
							<div class="orderArea">
								<div class="title">
									<h3>결제정보</h3>
								</div>
								<div class="ec-base-table">
									<table class="table border border-0">
										<caption>결제정보</caption>

										<c:forEach items="${list}" var="order">
										<tbody>
											<tr class="sum">
												<th scope="row">총 주문금액</th>
												<td>${order.finalPrice} 원
</td>
											</tr>
										</tbody>
										</c:forEach>
										<c:forEach items="${list}" var="order">
										<tbody class="displaynone">
											<tr class="sum">
												<th scope="row">총 할인금액</th>
												<td><strong class="txt14">0</strong>원</td>
											</tr>

										</tbody>
										</c:forEach>
										<c:forEach items="${point}" var="point">
										<tbody class="displaynone">
											<tr class="displaynone">
												<th scope="row">적립포인트</th>
												<td>${point.savePoint}BP</td>
											</tr>
										</tbody>
										</c:forEach>
									</table>
								</div>
								<div class="ec-base-table total">
									<table class="table border border-0">
										<caption>결제정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<c:forEach items="${list}" var="order">
										<tbody>
											<tr class="sum">
												<th scope="row">총 결제금액</th>
												<td><span class="txtEm"> <strong>${order.finalPrice}</strong>원
														<span class="displaynone"></span>
												</span></td>
											</tr>
											<tr class="">
												<th scope="row">결제수단</th>
												<td><strong><span>신용카드</span></strong>
													<p>
														<span>명세서에 (주)케이지이니시스(으)로 표기됩니다</span> 
													</p></td>
											</tr>
										</tbody>
										</c:forEach>
									</table>
								</div>
							</div>















							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">

								<div class="title" style="width: 1170px; height: 359px;">

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
										<c:forEach items="${list}" var="order">
											<tbody>
												<tr>
													<td scope="col">${order.orderDate}<br> [
														${order.orderUid} ]
													</td>
													<td scope="col"><a
														href="${pageContext.request.contextPath}/product/productList/">
													</a></td>
													<td scope="col">${order.quantity}</td>
													<td scope="col">${order.finalPrice}</td>
													<td scope="col">${order.shippingState}</td>
													<td scope="col"></td>
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