<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="sub-header">
	<div class="container">
		<div class="navbar-header navbar-default navbar-static-top" role="navigation">
			<div class="row">
			<div class="col-lg-12">
			<span>Welcome</span>
			<a href="#">Login</a>
			<a href="#">Join</a>
		</div>
		</div>
		</div>
	</div>
	</div>
<div class="navbar navbar-default navbar-static-top" role="navigation">
	<!-- Navigation 부분d -->
	<!-- Logo -->
     <div class="container">
          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
               </button>
               <a href="${pageContext.request.contextPath}/" class="navbar-brand">
               <i class="fa fa-magnet"></i></a>
          </div>
		<!-- Nav Links -->
		<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav navbar-right">
			<li class="active"><a href="#">About Us</a></li>
			<li class="active"><a class="nav-link"
				href="${pageContext.request.contextPath}/location/locationList">Location</a></li>
			<li><a href="#">Products</a></li>
			<li><a href="#">Board</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		</div>

	</div>
</div>