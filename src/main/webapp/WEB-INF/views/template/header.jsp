<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<a href="${pageContext.request.contextPath}/cart/cartList">Cart</a>
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
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/product/productList" style="font-size:large;">Shop</a></li>
					<li class="nav-item"><a class="nav-link" href="#" style="font-size:large;">Location</a></li>
					<li class="nav-item"><a class="nav-link" href="#" style="font-size:large;">Service</a></li>
				</ul>
				</div>
			</div>
		</nav>