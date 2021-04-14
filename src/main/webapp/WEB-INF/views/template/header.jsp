<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">BEAN BROTHERS</a>

  <!-- Links -->
  <ul class="navbar-nav">

    <!-- Dropdown -->
 	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        SHOP
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/product/productList?category=coffee">커피</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/product/productList?category=brewingTool">브루잉 도구</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/product/productList?category=gift">선물</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/product/productList?category=dripbag">드립백</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/product/productList?category=coldbrew">콜드브루</a>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/product/productList">로스터리</a>
    </li>
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Member
      </a>
      <div class="dropdown-menu">
      	<c:if test="${empty member}">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/member/memberLogin">Login</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/member/memberJoinCheck">Join</a>
       	</c:if>
       	<c:if test="${not empty member}">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/member/memberPage">My Page</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/account/accountList">Manage Account</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/member/memberLogout">Logout</a>
      	</c:if>
      </div>
    </li>
  </ul>
</nav>
