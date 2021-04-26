<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
<!-- header에만 적용하는 폰트 링크 -->
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">

 <div class="navbar-header navbar-default navbar-static-top"role="navigation">
   <!-- header에만 적용하는 폰트 스타일 -->
   <div class="container" style="font-family: 'Orelega One';">
         <div class="row" style="height: 30px; float:top;">
            <div class="col-lg-12" style="float:left;">
               <!-- 오른쪽 로그인, 회원가입-->
                <div class="col-xs-3">

                     <a href="${pageContext.request.contextPath}/">
                     <span>Bean Bean</span>
                     </a>
                    <div class="col-xs-9" style="float:right;">

            	      <a href="${pageContext.request.contextPath}/admin/adminList">
                      <span class="glyphicon glyphicon-user" style="margin-right: 10px;"> Admin </span>
                      </a>


                      <c:if test="${empty member}">
                      <a  data-toggle="modal" data-target="#login">
                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px; cursor:pointer;"> Login </span>
                      </a>
                      <a  data-toggle="modal" data-target="#join">
                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px; cursor:pointer;"> Join </span>
                      </a>
                      </c:if>

                      <c:if test="${not empty member}">
                      <a  href="${pageContext.request.contextPath}/member/memberPage">
                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px;"> MyPage </span>
                      </a>
                      <a  href="${pageContext.request.contextPath}/member/memberLogout">
                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px;"> Logout </span>
                      </a>
                      </c:if>

                      <a  href="${pageContext.request.contextPath}/cart/cartList">
                      <span class="glyphicon glyphicon-user" href="#"> Cart </span>
                  </a>
               </div>
                </div>
            </div>
         </div>
      </div>
   </div>
 

   <!-- Navigation 부분 -->

<nav class="navbar navbar-expand-lg navbar-light" style="background: #f8f8f8; padding: 10px 0;">
	<div class="container" style="font-family: 'Orelega One';">
		<button class="btn" data-toggle="collapse"
			data-target=".navbar-collapse">
				<a href="${pageContext.request.contextPath}/" class="navbar-brand">
					<img id="coffee" src="${pageContext.request.contextPath}/resources/images/coffee.png" width="50" height="50" float="right">
				</a>
			</button>
		<div class="collapse navbar-collapse flex-grow-0">
			<ul class="navbar-nav text-right">
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="${pageContext.request.contextPath}/product/productList">Shop</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="${pageContext.request.contextPath}/location/locationList">Location</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="${pageContext.request.contextPath}/magazine/magazineList">Magazine</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="${pageContext.request.contextPath}/qna/qnaList">Service</a></li>
			</ul>
		</div>
	</div>
</nav>


