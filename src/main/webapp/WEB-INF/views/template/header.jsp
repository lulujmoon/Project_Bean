<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header -->
<div class="sub-header">
      <div class="navbar-header navbar-default navbar-static-top"
         role="navigation">
   <div class="container">
         <div class="row">
            <div class="col-lg-12"> 
            <!-- 아직 작업중입니다! 일단 링크만 넣어서 연결해주세요! -->
               <span>Welcome</span>
               <a href="#">관리자 메뉴</a>
               <a href="#">Join</a>
               <a href="#">Login</a>
               <a href="#">Cart</a>
            </div>
         </div>
      </div>
   </div>
</div>

   <!-- Navigation 부분 -->

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<button class="btn" data-toggle="collapse"
			data-target=".navbar-collapse"></button>
		<a href="${pageContext.request.contextPath}/" class="navbar-brand">
			<i class="fa fa-magnet"></i>
		</a>
		<div class="collapse navbar-collapse flex-grow-0 ml-auto">
			<ul class="navbar-nav text-right">
				<li class="nav-item" style="font-size: large;"><a class="nav-link" href="#">Shop</a></li>
				<li class="nav-item" style="font-size: large;"><a class="nav-link" href="${pageContext.request.contextPath}/location/locationList.jsp">Location</a></li>
				<li class="nav-item" style="font-size: large;"><a class="nav-link" href="#">Service</a></li>
			</ul>
		</div>
	</div>
</nav>