<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>



	<div id="title">
		<div id="titleContainer">
			<div class="textTitle">
				<h1 style="text-align: center">My Page</h1>
				<div
					class="myPage nav justify-content-center">
					<div class="text-line"></div>
					<nav class="titleNav">
						<a href="/member/memberUpdate"><span class="ko">회원정보</span></a> <a
							href="/member/order"><span class="ko">주문내역</span></a> <a
							href="/member/subscription"><span class="ko">정기/간편주문</span></a> <a
							href="/member/point"><span class="ko">포인트</span></a> <a
							href="/member/qna"><span class="ko">문의</span></a>



	<h1>Member Update Page</h1>
	
	
	    <form id="frm" action="./member/memberUpdate" method="post"
			>
			<div class="form-group">
				<label for="id">이메일</label> <input type="text" class="form-control"
					id="id" name="id" readonly="readonly" value="${member.id}">

			</div>



			<div class="form-group">
				<label for="name">이름</label> <input type="text"
					class="form-control etc" id="name" name="name" value="${member.name}">
			</div>

			<div class="form-group">
				<label for="tel">휴대폰번호</label> <input type="text"
					class="form-control etc" id="tel" name="tel" value="${member.tel}">
			</div>

			<div class="form-group">
				<label for="phone">닉네임</label> <input type="text"
					class="form-control etc" id="nickname" name="nickname" value="${member.nickname}">
			</div>

<br>

					
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="gender" id="inlineRadio1" value="2"> <label
					class="form-check-label" for="inlineRadio1">여자</label>
			</div>

			
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="gender" id="inlineRadio2" value="1"> <label
					class="form-check-label" for="inlineRadio2">남자</label>
			</div>

<br>
<br>

			<div class="form-group">
				<label for="birthday">생년월일</label> <input type="date"
					class="form-control etc" id="birthday" name="birthday" value="${member.birthday}">
			</div>
	
			<div class="form-group">
				<label for="pw">현재 비밀번호</label> <input type="password"
					class="form-control" id="pw" name="pw">
				<h4 id="pwResult"></h4>
				<!-- PW는 6글자 이상 -->
			</div>
			<div class="form-group">
				<label for="pw">새로운 비밀번호</label> <input type="password"
					class="form-control" id="pw1" name="pw1">
			</div> 
				<div class="form-group">
				<label for="pw">새로운 비밀번호 확인</label> <input type="password"
					class="form-control" id="pw2" name="pw2">
			</div> 
			
				<button type="submit" class="btn btn-danger">저장하기</button>
			<!-- <button type="button" class="btn btn-danger">비밀번호 변경하기</button> -->
	</form>
	
	<div class="mypage-info">		
		※ 정기배송 주소는 <a href="./subscription">마이페이지 &gt; 정기배송</a> 에서 수정하실 수 있습니다.
	</div>
	
	
	<a href="./memberDelete" style="text-align: right; color: red;">탈퇴하기</a>

					</nav>
				</div>
			</div>
		</div>
	</div>



<script>
if(${member.gender}=='2') {
	$("#inlineRadio1").prop("checked","checked");
} else {
	$("#inlineRadio2").prop("checked","checked");
}
</script>
</body>
</html>