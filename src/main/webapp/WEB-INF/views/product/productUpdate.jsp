<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h2>Product Insert Page</h2>

		<form action="./productUpdate" method="post" id="frm" enctype="multipart/form-data">
			<input type="hidden" name="productNum" value="${dto.productNum}">
			<div class="form-group">
				<label for="name">상품명</label>
				<input type="text" class="form-control" id="name" name="name" value="${dto.name}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="category">카테고리</label>
				<select name="category">
					<option value="coffee">커피</option>
					<option value="brewingTool">브루잉 도구</option>
					<option value="gift">선물</option>
					<option value="dripbag">드립백</option>
					<option value="coldbrew">콜드브루</option>
				</select>
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="subtitle">상단 설명</label>
				<input type="text" class="form-control myCheck" id="subtitle" name="subtitle" value="${dto.subtitle}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="includes">구성품</label>
				<input type="text" class="form-control myCheck" id="includes" name="includes" placeholder="/로 구분해주세요." value="${dto.includes}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
   				 <label for="contents">상품 정보</label>
  				 <textarea class="form-control myCheck" id="contents" name="contents" value="${dto.contents}"></textarea>
 				<small id="conResult" class="form-text text-muted"></small>
 			</div>
 			<div class="form-group">
				<label for="details">상세 정보</label>
				<input type="text" class="form-control myCheck" id="details" name="details" placeholder="/로 구분해주세요." value="${dto.details}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="cartInfo">장바구니 요약</label>
				<input type="text" class="form-control myCheck" id="cartInfo" name="cartInfo" value="${dto.cartInfo}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="grinds">분쇄도 옵션</label>
				<input type="radio" name="grinds" value="O"> 네
				<input type="radio" name="grinds" value="X"> 아니오
				<small id="subResult" class="form-text text-muted"></small>
			</div>			
			<br>
    		<button>Write</button>

		</form>
	</div>
	
	<!-- Script -->
	<script type="text/javascript" src="../resources/jquery/summernote.js"></script>
</body>
</html>