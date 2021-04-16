<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- <link rel="stylesheet" href="../css/myPage.css">-->
<!-- <style type="text/css">
#title {
	width: 1140px;
	height: 113px;
	padding: 50px 0 60px 0;
	margine: 0 auto;
}
.myPage {
	font-family: BebasNeue,본고딕,Source Han Sans K,Noto Sans CJK KR,notokr;
	font-weight: 700;
}
</style> -->
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
						<a href="./memberUpdate"><span class="ko">회원정보</span></a> <a
							href="./order"><span class="ko">주문내역</span></a> <a
							href="./subscription"><span class="ko">정기/간편주문</span></a> <a
							href="./point"><span class="ko">포인트</span></a> <a
							href="./qna"><span class="ko">문의</span></a>



	


						<div id="content" class="cafe-content">
							<div class="bb-form mainpage-mobile"
								style="padding-bottom: 40px;">
								<a href="/account/point"
									class="mainpage-mobile-point mainpage-mobile-menu">
									<div style="float:left; padding-top: 5px">
										<b>내 포인트</b>
									</div>
									<div class="mainpage-mobile-point-number mainpage-mobile-menu-right">
										<span class="mainpage-point">${member.point}</span> BP
									</div>
								</a> 

								<a href="/member/memberUpdate" class="mainpage-mobile-menu"> 주문내역
									조회
									<div class="mainpage-mobile-menu-right arrow"></div>
								</a> <a href="/account/subscription" class="mainpage-mobile-menu">
									정기배송 관리
									<div class="mainpage-mobile-menu-right arrow"></div>
								</a> <a href="/account/edit" class="mainpage-mobile-menu"> 회원정보
									수정
									<div class="mainpage-mobile-menu-right arrow"></div>
								</a> <a href="/account/point" class="mainpage-mobile-menu"> 내
									포인트
									<div class="mainpage-mobile-menu-right arrow"></div>
								</a> <a href="/account/qna" class="mainpage-mobile-menu"> 문의내역
									조회
									<div class="mainpage-mobile-menu-right arrow"></div>
								</a>
							</div>
							<div class="bb-form mypage-mobile-wrapper mainpage-desktop"
								style="padding-bottom: 40px;">
								<ul id="mobileOrderList" class="my-subscribe"
									style="border-top: 1px solid #ccc;">
									<div class="sub-item mainpage-row">
										<div class="sub-item-column-product">
											<div class="mainpage-label">
												<span>회원정보</span>
												<div class="mainpage-labellink">
													<a href="/account/edit">수정하기 &gt;</a>
												</div>
											</div>
										</div>
										
										<div class="sub-item-column-infowrapper">
											<div>
												<div class="sub-item-column-info">
													<div class="sub-item-option">
														<div class="sub-item-option-label">기본정보</div>
														<div class="sub-item-option-content">
															${member.name} | ${member.nickname} <br> 
															${member.tel} <br>
															${member.id}
														</div>
													</div>
												</div>
												<div class="sub-item-column-payinfo">
													<div class="sub-item-option">
														<div class="sub-item-option-label">배송지 주소</div>
														<div class="sub-item-option-content">
															${member.addr}<br> 
															${member.addr2}
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="sub-item mainpage-row">
										<div class="sub-item-column-product">
											<div class="mainpage-label">
												<span>내 포인트</span>
												<div class="mainpage-labellink">
													<a href="/account/point">자세히 보기 &gt;</a>
												</div>
											</div>
										</div>
										<div class="sub-item-column-infowrapper">
											<div>
												<div class="sub-item-column-info">
													<div class="sub-item-option">
														<div class="sub-item-option-label">사용가능 포인트</div>
														<div class="sub-item-option-content">
															<span class="mainpage-point">${member.point}</span> BP
														</div>
													</div>
												</div>
												<div class="sub-item-column-payinfo">
													<div class="sub-item-option">
														<div class="sub-item-option-content">
															<ul class="mainpage-liststyle">
																<li>온라인샵, 정기배송 결제금액의 2%가 적립됩니다.</li>
																<li>온라인샵에서 현금처럼 사용 가능합니다.</li>
																<li>할인코드와 동시 사용 가능합니다.</li>
																<li>정기배송 및 네이버페이 주문시에는 사용할 수 없습니다.</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="sub-item mainpage-row">
										<div class="sub-item-column-product">
											<div class="mainpage-label">
												<span>최근 주문내역</span>
												<div class="mainpage-labellink">
													<a href="/account/order">자세히 보기 &gt;</a>
												</div>
											</div>
										</div>
										<div class="sub-item-column-infowrapper">
											<div>
												<div class="sub-item-column-info">
													<div class="sub-item-option">
														<div class="sub-item-option-content">
															주문내역이 없습니다.
															<div>
																<a href="/product">온라인샵 구경해보기 &gt;</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="sub-item mainpage-row">
										<div class="sub-item-column-product">
											<div class="mainpage-label">
												<span>나의 정기배송</span>
												<div class="mainpage-labellink">
													<a href="/account/subscription">정기배송 관리 &gt;</a>
												</div>
											</div>
										</div>
										<div class="sub-item-column-infowrapper">
											<div>
												<div class="sub-item-column-info">
													<div class="sub-item-option">
														<div class="sub-item-option-content">
															정기배송 신청내역이 없습니다.
															<div>
																<a href="/subscription">정기배송 구경해보기 &gt;</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</ul>
							</div>
						</div>
	



					</nav>
				</div>
			</div>
		</div>
	</div>




</body>
</html>