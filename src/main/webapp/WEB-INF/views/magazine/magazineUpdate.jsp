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
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<form id="frm" action="./magazineUpdate" method="post" enctype="multipart/form-data">
			
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					class="form-control myCheck" id="title" name="title" value="${dto.title}">
			</div>
			<div class="form-group">
				<label for="thumbnail">썸네일</label>
				<input type="file" name="file">
			</div>
			<div class="form-group">
				<label for="subTitle">Subtitle:</label> <input type="text"
					class="form-control myCheck" id="subTitle" name="subTitle" value="${dto.subTitle}">
			</div>

			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea class="form-control myCheck" rows="5" id="contents"
					name="contents" value="${dto.contents}"></textarea>
			</div>

			<input type="submit" id="btn" value="Write" class="btn btn-success">
		</form>

</div>

<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>