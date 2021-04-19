<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- summernote  -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!-- ------------ -->
<style type="text/css">
 #sample{
 display:none;
 }
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<h1>Qna Update Page</h1>

<form id="frm" action="./qnaUpdate" method="post">
			<div class="form-group">
			<input type="hidden" name="num" value="${dto.num}">
			
				<label for="writer">Writer:</label> <input type="text" readonly="readonly"
					class="form-control myCheck" id="writer" name="writer" value="${dto.writer}">
			</div>
			
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					class="form-control myCheck" id="title" name="title" value="${dto.title}">
						</div>

			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea class="form-control" rows="5" id="contents"
					name="contents">${dto.contents}</textarea>
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
			
			<input type="submit" id="btn" value="UPDATE" class="btn btn-primary">
		</form>

<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
</body>
</html>