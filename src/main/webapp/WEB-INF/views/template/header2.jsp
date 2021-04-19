<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <!-- Brand -->
	  <a class="navbar-brand" href="${pageContext.request.contextPath}/">Project Bean</a>
	
	  <!-- Links -->
	  <ul class="navbar-nav">
	    <li class="nav-item"><a class="nav-link" href="#">Product</a></li>
	    
	    <c:if test="${empty member}">
		    <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#login">Login</a></li>
		    <%--  href="${pageContext.request.contextPath}/member/memberLogin" --%>
		    <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#join">Join</a></li>
		    <!-- data-toggle="modal" data-target="#join" -->
		   <%--  href="${pageContext.request.contextPath}/member/memberJoin" --%>
		</c:if>
=======
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- meta Data -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Link -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="./resources/css/style.css">

<!-- 기존 템플릿 폰트 링크<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap"
	rel="stylesheet">


<!-- SCRIPTS -->
<script src="./resources/js/jquery.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/custom.js"></script>


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
>>>>>>> main
		
		<c:if test="${not empty member}">
		    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/memberPage">MyPage</a></li>
		    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogout">Logout</a></li>
		</c:if>
	
	
	
	    <!-- Dropdown -->
	    <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> BOARD </a>
	      <div class="dropdown-menu">
	        <a class="dropdown-item" href="${pageContext.request.contextPath}/notice/noticeList">NOTICE</a>
	        <a class="dropdown-item" href="${pageContext.request.contextPath}/qna/qnaList">QNA</a>
	        <a class="dropdown-item" href="#">Link 3</a>
	      </div>
	    </li>
	  </ul>
	</nav>
