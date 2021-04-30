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
	<!-- <section id="portfolio_list" style="margin-top: 30px;">
     <div class="container">
          <div class="row">			
               <div class="col-md-6">
                    <a href="./locationSelect?storeName=빈브라더스 합정점">
                         <div class="portfolio-thumb">
                              <img src="../resources/images/합정.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>합정점</h3>
                                             <small>서울시 마포구 합정동</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-6">
                    <a href="./locationSelect?storeName=빈브라더스 하남">
                         <div class="portfolio-thumb">
                              <img src="../resources/images/하남.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>하남점</h3>
                                             <small>경기도 하남시 하남스타필드</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-6">
                    <a href="./locationSelect?storeName=빈브라더스 신도림">
                         <div class="portfolio-thumb">
                              <img src="../resources/images/신도림.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>신도림점</h3>
                                             <small>현대백화점 디큐브시티</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-6">
                    <a href="./locationSelect?storeName=빈브라더스 인천 가좌">
                         <div class="portfolio-thumb">
                              <img src="../resources/images/인천.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>인천 가좌점</h3>
                                             <small>인천 서구</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>
</div>

</section> -->

<c:import url="../template/footer.jsp"></c:import>

</body>
</html>