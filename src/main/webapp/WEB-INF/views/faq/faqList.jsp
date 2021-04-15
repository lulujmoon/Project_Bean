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

<a href="./faqInsert"><button type="button" class="btn btn-success">글쓰기</button></a>




</body>
</html>