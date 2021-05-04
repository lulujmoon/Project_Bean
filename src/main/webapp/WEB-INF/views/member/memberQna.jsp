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

				<div class="mypage-section-title">문의</div>

				<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
					style="padding-bottom: 40px;">
					<ul id="mobileOrderList" class="my-subscribe"
						style="border-top: 1px solid #ccc;"></ul>
						
						
						<div class="table-responsive">
		<table class="table border border-0" >
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>날짜</th>
					<th>조회수</th>
					<th>status</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${list}" var="dto" >		
				<tr>
					<td>${dto.num}</td>
					<td>[ ${dto.category} ] <a href="http://localhost/bean/qna/qnaSelect?num=${dto.num}">${dto.title}</a></td>
					<td>${dto.writer}</td>
					<td>${dto.regDate}</td>
					<td>${dto.hit}</td>
					<td>${dto.status}</td>
				</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>


					<div class="clear"></div>
					<ul class="my-order-area">
					</ul>

					<div class="mypage-info">
						고객센터 상담시간 : 평일 9시 - 18시 <span style="color: #7F7F7F">(점심시간
							12-14시)</span> <br> <b>카카오톡 1:1 상담</b> @빈브라더스 | <b>전화</b>
						02-6204-7888 (내선 2번)
					</div>

				</div>
			</div>
		</div>
	</div>

		
		


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