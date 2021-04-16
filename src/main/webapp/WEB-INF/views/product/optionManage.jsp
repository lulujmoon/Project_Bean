<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<br>
	<div class="container">
	<h2>h</h2>
	
	
		<form action="./optionUpdate" method="post" id="frm">
				<div name="options" id="options">
					<h4>Option </h4>
					<input type="hidden" name="productNum" value="${dto.productNum}">
					<div class="form-group">
						<label for="type">옵션명</label>
						<input type="text" class="form-control myCheck" id="type" name="type" placeholder="용량 또는 커피명을 적어주세요.">
						<small id="subResult" class="form-text text-muted"></small>
					</div>
					<div class="form-group">
						<label for="optionInfo">옵션 설명</label>
						<input type="text" class="form-control myCheck" id="optionInfo" name="optionInfo">
						<small id="subResult" class="form-text text-muted"></small>
					</div>	
					<div class="form-group">
						<label for="price">가격</label>
						<input type="text" class="form-control myCheck" id="price" name="price">
						<small id="subResult" class="form-text text-muted"></small>
					</div>					
					<div class="form-group">
						<label for="discountRate">할인율</label>
						<input type="text" class="form-control myCheck" id="discountRate" name="discountRate" placeholder="소수점으로 적어주세요. 예) 10% 할인: 0.1">
						<small id="subResult" class="form-text text-muted"></small>
					</div>	
					<div class="form-group">
						<label for="stock">재고</label>
						<input type="text" class="form-control myCheck" id="stock" name="stock">
						<small id="subResult" class="form-text text-muted"></small>
					</div>
				</div>	
			<input type="button" id="add" value="add">						
		</form>
	</div>
	
</body>
</html>