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
							class="ko">주문내역</span></a> | <a
							href="${pageContext.request.contextPath}/member/memberPoint?id=${member.id}"><span
							class="ko">포인트</span></a> | <a
							href="${pageContext.request.contextPath}/qna/memberQna"><span
							class="ko">문의</span></a>
					</nav>
				</div>
			</div>
			<!-- </div> 하나 닫겨야함 -->




			<ul id="mobileOrderList" class="my-subscribe"
				style="border-top: 1px solid #ccc;"></ul>
			<div class="float-frame">
				<div id="info" class="info-box">
						<span><b style="font-size: 24px;">회원정보</b></span><br> 
						<a href="${pageContext.request.contextPath}/member/memberUpdate"
							class="mainpage-mobile-menu">수정하기 &gt;</a>
				</div>
				<div class="info-box">
						<div class="info-label">기본정보</div>
						<div class="info-content">
							${member.name} | ${member.nickname} <br> ${member.tel} <br>
							${member.id}
						</div>
				</div>
				<div class="info-box">
					<div class="info-label">배송지 정보</div>
					<div class="info-content">${member.addr}<br>${member.addr2}</div>
				</div>
					
			</div>
			
			
			
			
			<ul id="mobileOrderList" class="my-subscribe"
				style="border-top: 1px solid #ccc;"></ul>
			<div class="float-frame">
				<div id="info" class="info-box">
						<span><b style="font-size: 24px;">내 포인트</b></span><br> 
						<a href="${pageContext.request.contextPath}/member/memberPoint?id=${member.id}"
							class="mainpage-mobile-menu">자세히 보기 &gt;</a>
				</div>
				<div class="info-box">
						<div class="info-label">사용가능 포인트</div>
						<div class="info-content">
							<span class="mypage-point">${member.point}</span> BP
						</div>
				</div>
				<div class="info-ul">
					<ul class="info-label">
						<li>결제금액의 30%가 적립됩니다.</li>
						<li>온라인샵에서 현금처럼 사용 가능합니다.</li>
						<li>할인코드와 동시 사용 가능합니다.</li>
					</ul>
				</div>
					
			</div>
			
			
						
			<ul id="mobileOrderList" class="my-subscribe"
				style="border-top: 1px solid #ccc;"></ul>
			<div class="float-frame">
				<div id="info" class="info-box">
						<span><b style="font-size: 24px;">최근 주문내역</b></span><br> 
						<a href="${pageContext.request.contextPath}/member/memberOrder?id=${member.id}">자세히 보기 &gt;</a>
				</div>
				

				<div class="info-box">
						<div class="info-label">주문품목</div>
						<div class="info-content">
							<div class="sub-item-option-content">
								${list[0].orders.orderName}
                                <div class="info-label">${list[0].orders.orderDate} | ${list[0].orders.payState}</div>
							</div>
						</div>
				</div>



				<div class="info-box">
					<div class="info-label">배송지 정보</div>
					<div class="info-content">${member.addr}<br>${member.addr2}</div>
				</div>
					
					
					
			</div>			
			</div>



		<div id="footer-area"></div>

		<c:import url="../template/footer.jsp"></c:import>
	</c:if>
	<script type="text/javascript">
		if($("#noAccess").text()=="잘못된 접근"){
			alert("잘못된 접근입니다.");
			history.back();
		}
	</script>
</body>
</html>