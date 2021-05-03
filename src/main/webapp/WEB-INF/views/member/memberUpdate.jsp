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
<link rel="stylesheet" href="../resources/css/memberUpdate.css">
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


		<div id="content" class="cafe-content">
			<div id="write-order-info-wrapper" class="bb-form"
				style="padding-bottom: 40px;">


			<div class="mypage-section-title">회원정보</div>
			
							<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
					style="padding-bottom: 40px;">
					<ul id="mobileOrderList" class="my-subscribe"
						style="border-top: 1px solid #ccc;"></ul>

			<form id="frm" action="./member/memberUpdate" method="post" onsubmit="return check();">
				<div class="form-group">
					<label for="id">이메일</label> <input type="text" class="form-control form-control-sm"
						id="id" name="id" readonly="readonly" value="${member.id}">

				</div>



				<div class="form-group">
					<label for="name">이름</label> <input type="text"
						class="form-control etc" id="name" name="name"
						value="${member.name}">
				</div>

				<div class="form-group">
					<label for="tel">휴대폰번호</label> <input type="text"
						class="form-control etc" id="tel" name="tel" value="${member.tel}">
				</div>

				<div class="form-group">
					<label for="phone">닉네임</label> <input type="text"
						class="form-control etc" id="nickname" name="nickname"
						value="${member.nickname}">
				</div>

				<br>


				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gender"
						id="inlineRadio1" value="2"> <label
						class="form-check-label" for="inlineRadio1">여자</label>
				</div>


				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gender"
						id="inlineRadio2" value="1"> <label
						class="form-check-label" for="inlineRadio2">남자</label>
				</div>
				
				<input type="hidden" id="radioResult" value="${member.gender}"></input>

				<br> <br>

				<div class="form-group">
					<label for="birthday">생년월일</label> <input type="date"
						class="form-control etc" id="birthday" name="birthday"
						value="${member.birthday}">
				</div>
			
			<div class="form-group">
					<label for="postcode">우편번호</label> <input type="text" class="form-control mb-2 mr-sm-2"
						id="postcode" name="postcode" readonly="readonly" value="${member.postcode}">
				</div>
				
				<input type="button" id="popup" class="btn btn-primary" value="찾기"><br>
				
				<div class="form-group">
					<label for="addr">주소</label> <input type="text" class="form-control"
						id="addr" name="addr" readonly="readonly" value="${member.addr}">
				</div>
				
				
				<div class="form-group">
					<label for="adr2">상세주소</label> <input type="text" class="form-control"
						id="addr2" name="addr2" value="${member.addr2}">
				</div>
			
			
			
			
			<br>
				<div class="form-group">
						<div id="comment">*비밀번호를 변경하고 싶으시다면 입력해주세요</div>
					<label for="pw">현재 비밀번호</label> <input type="password"
						class="form-control" id="pw" name="pw" title="${member.pw}">
					<h6 id="pwResult"></h6>
					<!-- PW는 6글자 이상 -->
				</div>
				<div class="form-group">
					<label for="pw">새로운 비밀번호</label> <input type="password"
						class="form-control" id="pw1" name="pw1" >
						<h6 id="pw1Result"></h6>
				</div>
				<div class="form-group">
					<label for="pw">새로운 비밀번호 확인</label> <input type="password"
						class="form-control" id="pw2" name="pw2">
						<h6 id="pw2Result"></h6>
				</div>

				<button type="submit" id="edit" class="btn btn-danger">저장하기</button>
				
			<!-- <button type="button" class="btn btn-danger">비밀번호 변경하기</button>  -->	
			</form>
			</div>

<br>
<!-- 
			<div class="mypage-info">
				※ 배송 주소는 <a href="${pageContext.request.contextPath}/member/memberAddrUpdate">마이페이지 &gt; 배송지수정</a> 에서 수정하실 수
				있습니다.
			</div>
 -->
<br>

			
			<a href="./memberDelete" id="delete" style="float: right; color: red;">탈퇴하기</a>
			
			<br>
			<br>

		</div>
		</div>
		</div>




<c:import url="../template/footer.jsp"></c:import>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</c:if>	
	<script type="text/javascript">
		if($("#noAccess").text()=="잘못된 접근"){
			alert("잘못된 접근입니다.");
			history.back();
		}
	</script>
<script type="text/javascript" src="../resources/jquery/memberUpdate.js"></script>
</body>
</html>