<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Qna Insert Page</h1>

<form id="frm" action="./qnaInsert" method="post">
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

			<input type="submit" id="btn" value="WRITE" class="btn btn-primary">
		</form>


</body>
</html>