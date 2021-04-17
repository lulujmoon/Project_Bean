<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<h1>FAQ List Page</h1>

<div id="accordion">

 <c:forEach items="${list}" var="dto">
  <div class="card">
    <div class="card-header">
      <a class="collapsed card-link" data-toggle="collapse" href="#col${dto.num}">
        ${dto.title}
      </a>
    </div>
    
    <div id="col${dto.num}" class="collapse" data-parent="#accordion">
      <div class="card-body">
        ${dto.contents}
        <a href="#" onclick="${dto.num}">수정</a>
        <a href="#">삭제</a>
      </div>
    </div>
  </div>
 </c:forEach>

</div>

<div class="container">
	  <ul class="pagination">
	  
	  <c:if test="${pager.pre}">	
	    <li class="page-item"><a class="page-link p" href="./faqList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" title="${pager.startNum-1}">Previous</a></li>
	   </c:if>
	   
	   <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	   
	    <li class="page-item"><a class="page-link p" href="./faqList?curPage=${i}&kind=${pager.kind}&search=${pager.search}" title="${i}" title="${i}">${i}</a></li>
	   </c:forEach>
	   
	    <c:if test="${pager.next}">
	    <li class="page-item"><a class="page-link p" href="./faqList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" title="${pager.lastNum+1}">Next</a></li>
	    </c:if>
	  </ul>
	  
	<div class="input-group mt-3 mb-3">
	<form id="frm" action="./faqList" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
	  <div class="input-group-prepend">
	   <select class="form-control" name="kind" id="kind" >
	    <option class="sel">Category</option>
	    <option class="sel">Title</option>
	    <option class="sel">Contents</option>
	  </select>
	  </div>
	  <input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="">
	    <div class="input-group-append">
	    <button class="btn btn-success" type="submit">Search</button>
	  </div>
	 </form> 
	</div> 

<a href="./faqInsert"><button type="button" class="btn btn-success">글쓰기</button></a>

</div>


</body>
</html>