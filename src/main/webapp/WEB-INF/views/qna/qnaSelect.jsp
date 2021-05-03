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
<link rel="stylesheet" href="../resources/css/qnaSelect.css">
 
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
<div class="container">

<h2>QnA</h2>
<br> 
  <table class="table">

    <tbody>
      <tr>
        <td id="short">Title</td>
        <td>${dto.title}</td>
        <td id="right"></td>
      </tr>
       <tr>
        <td id="short">Writer</td>
        <td>${dto.writer}</td>
        <td id="right">${dto.category}</td>
      </tr>
       <tr>
        <td id="short"> </td>
        <td></td>
        <td id="right">${dto.regDate}</td>
      </tr>
    </tbody>
  </table>
  
 	<div class="contents">
 	<h5>${dto.contents}</h5>
 	</div>
 	
 	<table class="table">
    <tbody>
      <tr>
        <td id="short"></td>
        <td></td>
        <td></td>
      </tr>
      
    </tbody>
  </table>
  



<c:if test="${dto.writer eq member.id||member.id eq 'admin'}">
<a href="./qnaUpdate?num=${dto.num}"><button type="button" class="btn btn-success">수정</button></a>

<a href="./qnaDelete?num=${dto.num}" id="del" class="btn btn-success">삭제</a>
</c:if>

<c:if test="${member.id eq 'admin'}">
<a href="./qnaReply?num=${dto.num}" class="btn btn-success">답글</a>
</c:if>

</div>
<br>

<c:import url="../template/footer.jsp"></c:import>	
<script type="text/javascript" src="../resources/jquery/qnaInsert.js"></script>
</body>
</html>