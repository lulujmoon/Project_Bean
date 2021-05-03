<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<title>Bean Brothers Coffee</title>

<link rel="stylesheet" href="../resources/css/locationList.css">
</head>
<body>
<!-- header 부분 -->
<c:import url="../template/header.jsp"></c:import>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
<!-- list -->
<div class="container">
	<h4>Location </h4>
<div class="bar"></div>
</div>
<div style="text-align: center; margin: 20px 0 20px 0;">
		<a href="./locationSelect?storeName=빈브라더스 합정점">합정</a> | 
		<a href="./locationSelect?storeName=빈브라더스 하남">하남</a> | 
		<a href="./locationSelect?storeName=빈브라더스 신도림">신도림</a> | 
		<a href="./locationSelect?storeName=빈브라더스 인천 가좌">인천</a>
	</div>

<section id="portfolio_list" style="margin-top: 30px;">
		<div class="container">
			<div class="row">
				<c:forEach items="${list}" var="dto">
					<div class="col-md-6">
						<a href="./locationSelect?storeName=${dto.storeName}">
							<div class="portfolio-thumb">
								<img src="../resources/images/${dto.storeImg}" class="img-responsive" alt="Portfolio">
								<div class="portfolio-overlay">
									<div class="portfolio-item">
										<h3>${dto.storeName}</h3>
										<small>${dto.storeLoc}</small>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
</section>
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>