<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/qnaList.css">
</head>

<body>
<c:import url="../template/header.jsp"></c:import>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
<div class="container">
<li class="select">
<a href="${pageContext.request.contextPath}/qna/qnaList">QnA</a>
<a href="${pageContext.request.contextPath}/faq/faqList">FaQ</a>
</li>


<h2>QnA</h2>
<br>
<table class="table">
		<thead class="thead-light">
			<tr>
				<th>NUM</th>
				<th>TITLE</th>
				<th>WRITER</th>
				<th>DATE</th>
				<th>HIT</th>
				<th>STATUS</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list}" var="dto" >
			<tr>
				<td class="smallSize">${dto.num}</td>
				
				<td id="tdTitle"><a href="./qnaSelect?num=${dto.num}">
				<c:catch>
				<c:forEach begin="1" end="${dto.depth}">--</c:forEach>
				</c:catch>
				${dto.title}</a></td>
				<td>${dto.writer}</td>
				<td>${dto.regDate}</td>
				<td>${dto.hit}</td>
				<td>${dto.status}</td>
			</tr>
		</c:forEach>
		</tbody>
	
	</table>
	</div>
	
	<div class="container">
	  <div class="pagination">
	  
	   <c:if test="${pager.pre}">	
	  <a href="./qnaList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">&laquo;</a>
	   </c:if>
	   
	   <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	   
	   <a class="page-link p" href="./qnaList?curPage=${i}&kind=${pager.kind}&search=${pager.search}" title="${i}">${i}</a>
	   </c:forEach>
	    
	    <c:if test="${pager.next}">
	    <a href="./qnaList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" title="${pager.lastNum+1}">&raquo;</a>
	    </c:if>
	    
	  </div>
	  
	<div class="input-group mt-3 mb-3">
	<form id="frm" action="./qnaList" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
	  <div class="input-group-prepend">
	   <select class="form-control" name="kind" id="kind" >
	    <option class="sel">Writer</option>
	    <option class="sel">Contents</option>
	    <option class="sel">Title</option>
	  </select>
	  </div>
	  <input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="">
	    <div class="input-group-append">
	    <button class="btn btn-success" type="submit">Search</button>
	  </div>
	 </form> 
	</div> 
	
	<a href="./qnaInsert"><button type="button" class="btn btn-success">Write</button></a>

	</div>
	<br>
	
	<c:import url="../template/footer.jsp"></c:import>		
</body>
</html>