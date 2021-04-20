<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<!-- summernote  -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!-- ------------ -->
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
<div class="container">
<h1>Insert</h1>
<form id="frm" action="./qnaInsert" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="writer">Writer:</label> <input type="text"
					class="form-control myCheck" id="writer" name="writer">
					<!--  writer의 value 값 -> 멤버에서 받은파라미터로 바꾸기
					read only로 바꾸기 -->
					
			</div>
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					class="form-control myCheck" id="title" name="title">
			</div>

			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea class="form-control myCheck" rows="5" id="contents"
					name="contents"></textarea>
			</div>
			
		<div class="form-group">
			<label for="category">Category:</label> 
			<select name="category" id="category">
				<option value="배송문의">배송문의</option>
				<option value="상품문의">상품문의</option>
				<option value="주문문의">주문문의</option>
				<option value="결제문의">결제문의<option>
			</select>
		</div>
			
	

			<input type="submit" id="btnConfirm" value="write" class="btnn">
		</form>
</div>
<br>
<c:import url="../template/footer.jsp"></c:import>		
<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
<script type="text/javascript" src="../resources/jquery/qnaInsert.js"></script>
	

</body>
</html>