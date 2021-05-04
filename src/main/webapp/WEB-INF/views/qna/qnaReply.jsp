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
<link rel="stylesheet" href="../resources/css/qnaInsert.css">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<!-- summernote  -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!-- ------------ -->

 <div class="container">
 <h2>QnA</h2>
  <form id="frm" action="./qnaReply" method="post">
  
  	<input type="hidden" name="num" value="${param.num}">
  	
    <div class="form-group">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control" id="writer" name="writer" value="${member.id}" readonly="readonly">
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
			<label for="category">category:</label> 
			<select name="category" id="category">
				<option value="배송문의">배송문의</option>
				<option value="상품문의">상품문의</option>
				<option value="주문문의">주문문의</option>
				<option value="결제문의">결제문의<option>
			</select>
		</div>
    <button type="submit" value="Write" class="underline-btn" id="btn">Write</button>
  </form>
</div>
<br>
<c:import url="../template/footer.jsp"></c:import>	
<script type="text/javascript" src="../resources/jquery/qnaInsert.js"></script>
<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
</body>
</html>