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
					<a href="${pageContext.request.contextPath}/member/memberPage?id=${member.id}"><span
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
						href="${pageContext.request.contextPath}/member/memberQna?id=${member.id}"><span
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
			
	
			
			
				<div class="form-group">
					<label for="buyerName">받는 분 성함</label> <input type="text" class="form-control"
						id="buyerName" name="buyerName" value="${list.buyerName}">
				</div>


				<div class="form-group">
					<label for="buyerTel">전화번호</label> <input type="text" class="form-control"
						id="buyerTel" name="buyerTel" value="${list.buyerTel}">
				</div>
				
				
				<div class="form-group">
					<label for="buyerPostcode">우편번호</label> <input type="text" class="form-control"
						id="buyerPostcode" name="buyerPostcode" value="${list.buyerPostcode}">
				</div>
				
				<input type="button" id="popup" class="btn btn-primary" value="찾기"><br>
				
				<div class="form-group">
					<label for="buyerAddr">주소</label> <input type="text" class="form-control"
						id="buyerAddr" name="buyerAddr" value="${list.buyerAddr}">
				</div>
				
				
				<div class="form-group">
					<label for="buyerAddr2">상세주소</label> <input type="text" class="form-control"
						id="buyerAddr2" name="buyerAddr2" value="${list.buyerAddr2}">
				</div>
				
				
				<div class="form-group">
					<label for="message">배송 메세지</label> <input type="text" class="form-control"
						id="message" name="message" value="${list.message}">
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