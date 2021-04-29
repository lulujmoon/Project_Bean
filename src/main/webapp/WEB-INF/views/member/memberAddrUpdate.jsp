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
						class="ko">주문내역</span></a> |  <a
						href="${pageContext.request.contextPath}/member/memberPoint?id=${member.id}"><span
						class="ko">포인트</span></a> | <a
						href="${pageContext.request.contextPath}/member/memberQna"><span
						class="ko">문의</span></a>
				</nav>
			</div>
		</div>
		<!-- </div> 1개 -->



			<div class="mypage-section-title">배송지 정보</div>
			
					<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
					style="padding-bottom: 40px;">
					<ul id="mobileOrderList" class="my-subscribe"
						style="border-top: 1px solid #ccc;"></ul>

		 	<form id="frm" action="./member/memberAddrUpdate" method="post"> 
			

			<span style="display:none"><input type="text" name="id" value="${member.id}" id="id"></span>
			
			<c:forEach items="${list}" var="list"> ${list.quantity}</c:forEach>
			
			
				<div class="form-group">
					<label for="buyerName">받는 분 성함</label> <input type="text" class="form-control"
						id="buyerName" name="buyerName" value="${list.order.buyerName}">
				</div>


				<div class="form-group">
					<label for="buyerTel">전화번호</label> <input type="text" class="form-control"
						id="buyerTel" name="buyerTel" value="${list.order.buyerTel}">
				</div>
				
				
				<div class="form-group">
					<label for="buyerPostcode">우편번호</label> <input type="text" class="form-control"
						id="buyerPostcode" name="buyerPostcode" value="${list.order.buyerPostcode}">
				</div>
				
				<input type="button" id="popup" class="btn btn-primary" value="찾기"><br>
				
				<div class="form-group">
					<label for="buyerAddr">주소</label> <input type="text" class="form-control"
						id="buyerAddr" name="buyerAddr" value="${list.order.buyerAddr}">
				</div>
				
				
				<div class="form-group">
					<label for="buyerAddr2">상세주소</label> <input type="text" class="form-control"
						id="buyerAddr2" name="buyerAddr2" value="${list.order.buyerAddr2}">
				</div>
				
				
				<div class="form-group">
			<label for="buyerName">배송 메세지</label><select name="message" id="msg-sel">
				<option value="배송 전에 연락 주세요." class="msg-opt">배송 전에 연락 주세요.</option>
				<option class="msg-opt">부재 시 경비실에 맡겨주세요.</option>
				<option class="msg-opt">부재 시 문앞에 놔주세요.</option>
				<option>직접 입력</option>
			</select>
			<input type="text" id="message"  value="${list.order.message}">
				</div>
	


				<button type="submit" id="edit" class="btn btn-danger">저장하기</button>
 			</form> 
			</div>


			
			<br>
			<br>

		</div>



	<c:import url="../template/footer.jsp"></c:import>


</body>
</html>