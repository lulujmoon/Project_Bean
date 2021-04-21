<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
<!-- header에만 적용하는 폰트 링크 -->
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">


 <div class="navbar-header navbar-default navbar-static-top"role="navigation">
	<!-- header에만 적용하는 폰트 스타일 -->
   <div class="container" style="font-family: 'Orelega One';">
         <div class="row" style="height: 30px;">
            <div class="col-lg-12" style="float:left;"> 
               <!-- 오른쪽 로그인, 회원가입-->
                <div class="col-xs-3">
                	  <button type="button" class="btn btn-default">
                	  <a href="${pageContext.request.contextPath}/">
                	  <span>Welcome</span> <!-- 로고 넣기 전 홈으로 가는 임시링크 -->
                	  </a>
                	  </button>
                      <button type="button" class="btn btn-default" style="float:right; font-size: 13px;">

                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px;"> Admin </span>
                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px;"> Login </span>
                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px;"> Join </span>
                      <span class="glyphicon glyphicon-user" href="#"> Cart </span>

                      </button>
                </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Navigation 부분 -->

<nav class="navbar navbar-expand-lg navbar-light" style="background: #f8f8f8; padding: 30px 0;">
	<div class="container" style="font-family: 'Orelega One';">
		<button class="btn" data-toggle="collapse"
			data-target=".navbar-collapse"></button>
			<a href="${pageContext.request.contextPath}/" class="navbar-brand">
			<i class="fa fa-magnet"></i> <!-- 현재 작동 안함! -->
		</a>
		<div class="collapse navbar-collapse flex-grow-0">
			<ul class="navbar-nav text-right">
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="#">Shop</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="${pageContext.request.contextPath}/location/locationList">Location</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="#">Service</a></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropbtn" style="font-size: large;">Service</a>
					<div class="dropdown-content">
						<a href="${pageContext.request.contextPath}/faq/faqList">FAQ</a>
						<a href="${pageContext.request.contextPath}/qna/qnaList">QNA</a>
					</div></li>
				
			</ul>
		</div>
	</div>
</nav>