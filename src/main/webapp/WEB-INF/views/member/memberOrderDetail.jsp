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
<c:if test="${empty member}">
	<span id="noAccess">잘못된 접근</span>
</c:if>
<c:if test="${not empty member}">
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
						href="${pageContext.request.contextPath}/member/memberOrder?id=${member.id}"><span
						class="ko">주문내역</span></a> |  <a
						href="${pageContext.request.contextPath}/member/memberPoint?id=${member.id}"><span
						class="ko">포인트</span></a> | <a
						href="${pageContext.request.contextPath}/member/memberQna"><span
						class="ko">문의</span></a>
				</nav>
			</div>
		</div>
		<!-- </div> 1개 -->
<br>

		<div id="content" class="cafe-content">
			<div id="write-order-info-wrapper" class="bb-form"
				style="padding-bottom: 40px;">

				<div class="mypage-section-title">주문상세조회</div>

				<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
					style="padding-bottom: 40px;">
					<ul id="mobileOrderList" class="my-subscribe"
						style="border-top: 1px solid #ccc;"></ul>


<br>
					<div class="mypage-anotherorder">
						<div class="mypage-anotherorder-subscription">

							<!-- 주문정보 -->
							<div class="orderArea">
								<div class="title">
									<h3>주문정보</h3>
								</div>

								<div class="ec-base-table">
										<table class="table border border-0">
											<colgroup>
												<col style="width: 160px">
												<col style="width: auto">
											</colgroup>

											<tbody>
												<tr>
													<th scope="row">주문번호</th>
													<td id="orderUid">${list[0].orderUid}</td>
												</tr>
												<tr>
													<th scope="row">주문일자</th>
													<td>${list[0].orderDate}</td>
												</tr>
												<tr>
													<th scope="row">주문자</th>
													<td><span>${member.name}</span></td>
												</tr>
												<tr>
													<th scope="row">주문처리상태</th>
													<td>
														<span id="shippingState">${list[0].shippingState}</span>
														<input type="image" src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cancel.gif" alt="주문취소" class="displaynone" id="cancel-btn" value="${list[0].order.impUid}">
													</td>
												</tr>
											</tbody>
										</table>
								</div>
							</div>
<br>

							<!-- 결제 정보 -->
							<div class="orderArea">
								<div class="title">
									<h3>결제정보</h3>
								</div>
	<%-- 							<div class="ec-base-table">
									<table class="table border border-0">

										<c:forEach items="${list}" var="order">
											<tbody>
												<tr class="sum">
													<th scope="row">총 주문금액</th>
													<td>${order.finalPrice}원</td>
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
								</div> --%>
								<div class="ec-base-table total">
									<table class="table border border-0">
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<c:forEach items="${list}" var="list">
											<tbody>
												<tr class="sum">
													<th scope="row">총 결제금액</th>
													<td><span class="txtEm"> <strong>${list.finalPrice}</strong>원
															<span class="displaynone"></span>
													</span></td>
												</tr>
												<tr class="">
													<th scope="row">결제수단</th>
													<c:if test="${list.order.payMethod eq 'card'}">
													<td><strong><span>신용카드</span></strong>
														<p>
															<span>명세서에 (주)케이지이니시스(으)로 표기됩니다</span>
														</p></td>
													</c:if>	
													<c:if test="${list.order.payMethod ne 'card'}">
													<td><strong><span>포인트</span></strong>
														<p>
															<span>명세서에 (주)케이지이니시스(으)로 표기됩니다</span>
														</p></td>
													</c:if>
												</tr>
											</tbody>
										</c:forEach>
									</table>
								</div>
							</div>


<br>

							<!-- 주문 상품 정보 -->
							<div class="orderArea">
								<div class="title">
									<h3>주문 상품 정보</h3>
								</div>

								<!-- 기본배송 -->
								<div class="ec-base-table typeList">
									<table class="table border border-0">

										<thead>
											<tr>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">판매가</th>
												<th scope="col">배송구분</th>
												<th scope="col">주문처리상태</th>
												<th scope="col">취소/교환/반품</th>
											</tr>
										</thead>


										<c:forEach items="${list}" var="order">

											<tbody>
												<tr>
													<td scope="col"><a
														href="${pageContext.request.contextPath}/product/productList?productNum=${order.product.productNum}">${order.product.name}
													</a></td>
													<td scope="col">${order.quantity}</td>
													<td scope="col">${order.finalPrice}</td>
													<td scope="col">기본배송</td>
													<td scope="col">${order.shippingState}</td>
													<td scope="col">-</td>
												</tr>
											</tbody>
										</c:forEach>
									
											<tfoot class="right">
												<tr>
													<td colspan="7"><span style="float: left;">[기본배송]</span>
													<div style="float: right;">상품구매금액 <strong> ${list[0].finalPrice} </strong><span class="displaynone">
													</span> + 배송비 3000 <span class="displaynone"> - 상품할인금액 0</span> =
														합계 : ${list[0].order.amount} <strong>
														<span class="txt18"> </span></strong> <span class="displaynone"></span></div>
													</td>
												</tr>
											</tfoot>
							
									</table>
								</div>
							</div>

<br>



							<!-- 배송지정보 -->
						<div class="orderArea">
								<div class="title">
									<h3>배송지정보</h3>
								</div>
								<div class="ec-base-table">
									<table class="table border border-0">
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="displaynone">
									
											<tr>
												<th scope="row">받으시는분</th>
												<td><span>${list[0].order.buyerName}</span></td>
											</tr>
											<tr>
												<th scope="row">우편번호</th>
												<td><span>${list[0].order.buyerPostcode}</span></td>
											</tr>
											<tr>
												<th scope="row">주소</th>
												<td><span>${list[0].order.buyerAddr} ${list[0].order.buyerAddr2}</span></td>
											</tr>
											<tr>
												<th scope="row">휴대전화</th>
												<td><span>${list[0].order.buyerTel}</span></td>
											</tr>
											<tr>
												<th scope="row">배송메시지</th>
												<td><span>${list[0].order.message}</span></td>
											</tr>
										</tbody>
									</table>
									
								</div>
							</div>

						


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 테스트 영역 -->
	<div class="container">
		정가 : ${prices[0]}<br>
		- 할인액 : ${prices[2]}<br>
		= 할인가 : ${prices[1]}<br>
		배송비 : ${prices[3]}<br>
		사용포인트 : ${prices[4]}
	</div>


	<c:import url="../template/footer.jsp"></c:import>
</c:if>	
	<script type="text/javascript">
		if($("#noAccess").text()=="잘못된 접근"){
			alert("잘못된 접근입니다.");
			history.back();
		}
	</script>
	<script type="text/javascript" src="../resources/jquery/memberOrderDetail.js"></script>
</body>
</html>