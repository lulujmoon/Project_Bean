<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header -->
<div class="sub-header">
	<div class="container">
		<div class="navbar-header navbar-default navbar-static-top"
			role="navigation">
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
<div class="navbar navbar-default navbar-static-top" role="navigation">
	<!-- Navigation 부분 -->
	<!-- Logo 부분 -->
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse"></button>
			<a href="${pageContext.request.contextPath}/" class="navbar-brand">
				<i class="fa fa-magnet"></i>
			</a>
		</div>
		
		<!-- Nav Links -->
		<!-- 여기에 링크 연결해서 넣어주세요! -->
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="./product/productList">Shop</a></li>
				<li><a href="#">Location</a></li>
				<li><a href="#">Service</a></li>
			</ul>
		</div>

	</div>
</div>