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
<link rel="stylesheet" href="../resources/css/admin.css">

</head>
<body>
<c:import url="../template/adminheader.jsp"></c:import>
<%-- <div class="col-md-2" style="padding-left:0;float:left;">
<div id="mySidenav" class="sidenav">
		<button class="btn" data-toggle="collapse" data-target=".navbar-collapse">
		</button>
				<a href="${pageContext.request.contextPath}/" class="navbar-brand">
					<img id="coffee" src="${pageContext.request.contextPath}/resources/images/coffee.png" width="50" height="50">
				</a>

		<a class="memberlist" id="getlist" href="../member/memberList">회원관리</a> 
		<a href="#">주문관리</a> 
		<a href="#">재고관리</a> 
		<a href="#">구독관리</a>
</div> --%>
</div>
	<div class="admin col-md-10">
		<h3>Admin Page</h3>
	</div>

</body>

</html>