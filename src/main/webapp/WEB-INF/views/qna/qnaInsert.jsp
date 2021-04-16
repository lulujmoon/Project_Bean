<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<h1>Qna Insert Page</h1>
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
				<label for="category">category:</label> <input type="text"
					class="form-control myCheck" id="category" name="category">
			</div>
			
			<input type="button" id="add" value="ADD" class="btn btn-danger">
			<input type="button" id="del" value="DELETE" class="btn btn-info">
			<div id="files"></div>

			<input type="submit" id="btn" value="WRITE" class="btn btn-primary">
		</form>
</div>

	<div id="sample">
		<div class="input-group">
			<div class="custom-file">
				<input type="file"  id="inputGroupFile04"
					class="form-control-file border" name="files">
			</div>
			<div class="input-group-append delete">
				<input class="btn btn-outline-secondary" type="button"
					id="inputGroupFileAddon04" value="Delete">
			</div>
		</div>


	</div>


</body>
</html>