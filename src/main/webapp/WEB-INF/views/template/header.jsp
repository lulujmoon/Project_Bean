<%@ page language="java" contentType="text/html; charset=UTF-8"
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
		   <%--  href="${pageContext.request.contextPath}/member/memberJoin" --%>
		</c:if>
		
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
