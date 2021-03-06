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
			<section id="my-page">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2><a href="${pageContext.request.contextPath}/member/memberPage?id=${member.id}"><span
							class="en">MY PAGE</span></a></h2>
                    <h4>Your personal coffee guide</h4>
                    <hr>
               </div>
					<div class="col-md-12">
					<nav id="title-nav">
						<a href="${pageContext.request.contextPath}/member/memberUpdate"><span
							class="ko">회원정보</span></a> | <a
							href="${pageContext.request.contextPath}/member/memberOrder?id=${member.id}"><span
							class="ko">주문내역</span></a> | <a
							href="${pageContext.request.contextPath}/member/memberPoint?id=${member.id}"><span
							class="ko">포인트</span></a> | <a
							href="${pageContext.request.contextPath}/member/memberQna?id=${member.id}"><span
							class="ko">문의</span></a>
					</nav>
</div>
          </div>
     </div>
</section>
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

									<table class="table border border-0">
										<thead>
											<tr>
												<th scope="col">주문일자<br>[주문번호]
												</th>
												<th scope="col">주문명</th>
												<th scope="col">상품구매금액</th>
												<th scope="col">주문처리상태</th>
												<th scope="col">취소/교환/반품</th>
											</tr>
										</thead>
										<c:forEach items="${list}" var="list">
											<c:if test="${list.order.payState ne '결제전'}"> 
												<tbody>
													<tr>
														<td scope="col">${list.order.orderDate}<br> <a
															href="${pageContext.request.contextPath}/member/memberOrderDetail?orderUid=${list.order.orderUid}">
															[ ${list.order.orderUid} ]</a>
														</td>
														<td scope="col"><a href="${pageContext.request.contextPath}/member/memberOrderDetail?orderUid=${list.order.orderUid}">${list.order.orderName}</a></td>
														<td scope="col">${list.finalPrice}</td>
														<td scope="col">${list.shippingState}</td>
														<td scope="col"><c:if
																test="${list.order.payState eq '주문취소'}">
														${list.order.payState}
														</c:if></td>
													</tr>
												</tbody>
										</c:if> 
										</c:forEach>
									</table>
								</div>

							</div>


						</div>
					</div>
				</div>
			</div>
		</div>


		<c:import url="../template/footer.jsp"></c:import>

	</c:if>
	<script type="text/javascript">
		if ($("#noAccess").text() == "잘못된 접근") {
			alert("잘못된 접근입니다.");
			history.back();
		}
	</script>
</body>
</html>