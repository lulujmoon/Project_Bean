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


 <div class="container">
 <h2>QNA Reply form</h2>
  <form id="frm" action="./qnaReply" method="post">
  
  	<input type="hidden" name="num" value="${param.num}">
  	
    <div class="form-group">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control" id="writer" name="writer">
    </div>
    <!-- read only추가 밸류에 멤버.아이디 추가 -->
    
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" name="title">
    </div>
    
    <div class="form-group">
      <label for="contents">Contents:</label>
      <textarea class="form-control" rows="5" id="contents" name="contents"></textarea>
    </div>
    
     <div class="form-group">
      <label for="category">Category:</label>
      <textarea class="form-control" rows="5" id="category" name="category"></textarea>
    </div>
    
    <input type="submit" id="btn" value="WRITE" class="btn btn-primary">
  </form>
</div>



</body>
</html>