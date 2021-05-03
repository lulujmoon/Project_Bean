<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<section id="home">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<h3>Admin Page</h3>
					<hr>
				</div>
			</div>
			<p>Menu:</p>
			<ul class="nav nav-tabs nav-justified">
				<li class="nav-item"><a class="nav-link active" href="#">메뉴</a></li>
				<li class="nav-item"><a class="nav-link" href="#">회원관리</a></li>
				<li class="nav-item"><a class="nav-link" href="#">주문관리</a></li>
				<li class="nav-item"><a class="nav-link" href="#">재고관리</a></li>
				<li class="nav-item"><a class="nav-link" href="../mail/mailList">구독관리</a>
				</li>
			</ul>

			
			</div>

		



	</section>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>