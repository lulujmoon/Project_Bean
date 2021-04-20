<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header -->
 <div class="navbar-header navbar-default navbar-static-top"role="navigation">
   <div class="container">
         <div class="row" style="height: 30px;">
            <div class="col-lg-12" style="float:left;"> 
               <!-- 오른쪽 로그인, 회원가입-->
                <div class="col-xs-3">
                	  <button type="button" class="btn btn-default">
                	  <a href="${pageContext.request.contextPath}/">
                	  <span>Welcome</span> <!-- 임시링크 -->
                	  </a>
                	  </button>
                      <button type="button" class="btn btn-default" style="float:right; font-size: 13px;">

                      <span class="glyphicon glyphicon-user" href="#" style="margin-right: 10px;"> 관리자 페이지 </span>
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
	<div class="container">
		<button class="btn" data-toggle="collapse"
			data-target=".navbar-collapse"></button>
		<a href="${pageContext.request.contextPath}/" class="navbar-brand">
			<i class="fa fa-magnet"></i>
		</a>
		<div class="collapse navbar-collapse flex-grow-0">
			<ul class="navbar-nav text-right">
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="#">Shop</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="${pageContext.request.contextPath}/location/locationList">Location</a></li>
				<li class="nav-item" style="font-size: large;">
				<a class="nav-link" href="#">Service</a></li>
			</ul>
		</div>
	</div>
</nav>