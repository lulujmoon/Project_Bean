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
						href="${pageContext.request.contextPath}/member/memberPoint"><span
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
								<!--
        $login_url = /member/login.html
    -->
								<div class="title" style="width: 1170px; height: 359px;">
									<h3>주문 상품 정보</h3>
								</div>

								<table border="1" summary="">
									<colgroup>
										<col style="width: 135px; height: 75px;">
										<col style="width: 93px;">
										<col style="width: auto;">
										<col style="width: 61px;">
										<col style="width: 111px;">
										<col style="width: 111px;">
										<col style="width: 111px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">주문일자<br>[주문번호]
											</th>
											<th scope="col">이미지</th>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">상품구매금액</th>
											<th scope="col">주문처리상태</th>
											<th scope="col">취소/교환/반품</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="col">주문번호<br>[주문번호]
											</td>
											<td scope="col">이미지</td>
											<td scope="col">상품정보</td>
											<td scope="col">수량</td>
											<td scope="col">상품구매금액</td>
											<td scope="col">주문처리상태</td>
											<td scope="col">취소/교환/반품</td>
										</tr>


									</tbody>
								</table>




								<table border="1" summary="">
									<colgroup>
										<col style="width: 135px; height: 75px;">
										<col style="width: 93px;">
										<col style="width: auto;">
										<col style="width: 61px;">
										<col style="width: 111px;">
										<col style="width: 111px;">
										<col style="width: 111px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">주문일자<br>[주문번호]
											</th>
											<th scope="col">이미지</th>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">상품구매금액</th>
											<th scope="col">주문처리상태</th>
											<th scope="col">취소/교환/반품</th>
										</tr>
									</thead>
									<tbody class="center ">
										<tr class="xans-record-">
											<td rowspan="2" class="number ">
												<p></p> 2021-03-23
												<p>
													<a
														href="detail.html?order_id=20210323-0008723&amp;page=1&amp;history_start_date=2021-01-28&amp;history_end_date=2021-04-28"
														class="line">[20210323-0008723]</a>
												</p> <a href="#none" class="displaynone"
												onclick="OrderHistory.orderCancel('20210323-0008723')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cancel.gif"
													alt="주문취소"></a> <a
												href="cancel.html?order_id=20210323-0008723"
												class="displaynone button"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cancel2.gif"
													alt="취소신청"></a> <a
												href="exchange.html?order_id=20210323-0008723"
												class=" button"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_exchange.gif"
													alt="교환신청"></a> <a
												href="return.html?order_id=20210323-0008723" class=" button"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_return.gif"
													alt="반품신청"></a>
											</td>
											<td class="thumb"><a
												href="/product/detail.html?product_no=208&amp;cate_no=23"><img
													src="//www.dearmymuse.com/web/product/medium/202103/a0685776841bd382d18460ea751e56dc.jpg"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt=""></a></td>
											<td class="product left top"><strong class="name"><a
													href="javascript:alert('해당 상품은 미진열 상품입니다.')"
													class="ec-product-name">[3/14 예약판매]더보이즈(THE BOYZ) - 홈키트
														파자마(단품) HOME KIT PAJAMA</a></strong>
												<div class="option "></div>
												<p class="gBlank5 displaynone">무이자할부 상품</p></td>
											<td>1</td>
											<td class="right"><strong>77,000원</strong>
												<div class="displaynone"></div></td>
											<td class="state">
												<p class="txtEm">배송완료</p>
												<p class="">
													<a
														href="/common/delivery_trace.php?is12RFront=T&amp;order_id=20210323-0008723&amp;invoice_no=6395-1781-1284&amp;product_no=208&amp;opt_id=000L&amp;is_second_delivery=F"
														target="_blank">CJ대한통운</a>
												</p>
												<p class="">
													<a href="#none" class="line"
														onclick="window.open('/common/delivery_trace.php?is12RFront=T&amp;order_id=20210323-0008723&amp;invoice_no=6395-1781-1284&amp;product_no=208&amp;opt_id=000L&amp;is_second_delivery=F', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[6395-1781-1284]</a>
												</p> <a
												href="/board/product/write.html?board_no=4&amp;product_no=208&amp;order_id=20210323-0008723"
												class=""><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_comment.gif"
													alt="구매후기"></a> <a href="#none" class="displaynone"
												onclick="OrderHistory.withdraw('C','20210323-0008723|208|000L|11572','F', 'F', 'F')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_retract.gif"
													alt="취소철회"></a> <a href="#none" class="displaynone"
												onclick="OrderHistory.withdraw('E','20210323-0008723|208|000L|11572','F', 'F', 'F')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_retract2.gif"
													alt="교환철회"></a> <a href="#none" class="displaynone"
												onclick="OrderHistory.withdraw('R','20210323-0008723|208|000L|11572','F', 'F', 'F')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_retract3.gif"
													alt="반품철회"></a>
											</td>
											<td>
												<p class="displaynone">
													<a href="#none" class="line"
														onclick="OrderHistory.getDetailInfo('?product_no=208&amp;cate_no=23&amp;order_id=20210323-0008723&amp;ord_item_code=20210323-0008723-01');">[상세정보]</a>
												</p>
												<p class="">-</p>
											</td>
										</tr>
										<tr class="xans-record-">
											<td class="number displaynone">
												<p></p> 2021-03-23
												<p>
													<a
														href="detail.html?order_id=20210323-0008723&amp;page=1&amp;history_start_date=2021-01-28&amp;history_end_date=2021-04-28"
														class="line">[20210323-0008723]</a>
												</p> <a href="#none" class="displaynone"
												onclick="OrderHistory.orderCancel('20210323-0008723')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cancel.gif"
													alt="주문취소"></a> <a
												href="cancel.html?order_id=20210323-0008723"
												class="displaynone button"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cancel2.gif"
													alt="취소신청"></a> <a
												href="exchange.html?order_id=20210323-0008723"
												class=" button"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_exchange.gif"
													alt="교환신청"></a> <a
												href="return.html?order_id=20210323-0008723" class=" button"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_return.gif"
													alt="반품신청"></a>
											</td>
											<td class="thumb"><a
												href="/product/detail.html?product_no=209&amp;cate_no=23"><img
													src="//www.dearmymuse.com/web/product/medium/202103/69332e4dc085cfed60673fcf234c987c.jpg"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt=""></a></td>
											<td class="product left top"><strong class="name"><a
													href="javascript:alert('해당 상품은 미진열 상품입니다.')"
													class="ec-product-name">[3/14 예약판매]더보이즈(THE BOYZ) -
														홈키트세트 HOME KIT SET</a></strong>
												<div class="option ">[옵션: J. 선우(SUNWOO)]</div>
												<p class="gBlank5 displaynone">무이자할부 상품</p></td>
											<td>1</td>
											<td class="right"><strong>132,000원</strong>
												<div class="displaynone"></div></td>
											<td class="state">
												<p class="txtEm">배송완료</p>
												<p class="">
													<a
														href="/common/delivery_trace.php?is12RFront=T&amp;order_id=20210323-0008723&amp;invoice_no=6395-1781-1284&amp;product_no=209&amp;opt_id=000J&amp;is_second_delivery=F"
														target="_blank">CJ대한통운</a>
												</p>
												<p class="">
													<a href="#none" class="line"
														onclick="window.open('/common/delivery_trace.php?is12RFront=T&amp;order_id=20210323-0008723&amp;invoice_no=6395-1781-1284&amp;product_no=209&amp;opt_id=000J&amp;is_second_delivery=F', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[6395-1781-1284]</a>
												</p> <a
												href="/board/product/write.html?board_no=4&amp;product_no=209&amp;order_id=20210323-0008723"
												class=""><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_comment.gif"
													alt="구매후기"></a> <a href="#none" class="displaynone"
												onclick="OrderHistory.withdraw('C','20210323-0008723|209|000J|11573','F', 'F', 'F')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_retract.gif"
													alt="취소철회"></a> <a href="#none" class="displaynone"
												onclick="OrderHistory.withdraw('E','20210323-0008723|209|000J|11573','F', 'F', 'F')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_retract2.gif"
													alt="교환철회"></a> <a href="#none" class="displaynone"
												onclick="OrderHistory.withdraw('R','20210323-0008723|209|000J|11573','F', 'F', 'F')"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_retract3.gif"
													alt="반품철회"></a>
											</td>
											<td>
												<p class="displaynone">
													<a href="#none" class="line"
														onclick="OrderHistory.getDetailInfo('?product_no=209&amp;cate_no=23&amp;order_id=20210323-0008723&amp;ord_item_code=20210323-0008723-02');">[상세정보]</a>
												</p>
												<p class="">-</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p class="message displaynone">주문 내역이 없습니다.</p>
							</div>





							<%-- <a href="${pageContext.request.contextPath}/member/memberSubscrip">정기배송 / 샘플러 주문내역</a> --%>
						</div>


					</div>
					<div class="clear"></div>
					<ul class="my-order-area">
					</ul>

					<div class="mypage-info">
						환불, 배송정보 변경, 기타 문의사항은 고객센터로 문의해주세요.<br> 카카오톡 @빈브라더스 |
						02-6204-7888 (내선 2번, 평일 오전 9시 - 오후 6시)
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>