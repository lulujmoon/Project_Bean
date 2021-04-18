<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Faq Insert Page</h1>

<form id="frm" action="./faqInsert" method="post">
			<div class="form-group">
				<label for="writer">Writer:</label> <input type="text"
					class="form-control myCheck" id="writer" name="writer">
					<!--  writer의 value 값 -> 관리자에서 받은 session 파라미터로 바꾸기
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
			<label for="category">category:</label> 
			<select name="category" id="category">
				<option value="배송문의">배송문의</option>
				<option value="상품문의">상품문의</option>
				<option value="결제문의">결제문의<option>
				<option value="주문문의">주문문의</option>
			</select>
			</div>

			<input type="submit" id="btn" value="WRITE" class="btn btn-primary">
		</form>
</body>
</html>