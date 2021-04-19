<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand -->
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">HOME</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">A</a></li>
			
			<li class="nav-item"><a class="nav-link" href="#">B</a></li>
			<li class="nav-item"><a class="nav-link" href="#">C</a></li>
			
			<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Join</a></li>

			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> BOARD </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/faq/faqList">FAQ</a>
					 <a class="dropdown-item" href="${pageContext.request.contextPath}/qna/qnaList">QNA</a> 

				</div>
				</li>
		</ul>
	</nav>
