<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootstrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h2>Product Insert Page</h2>

		<form action="./productInsert" method="post" id="frm" enctype="multipart/form-data">
			<div class="form-group">
				<label for="name">상품명</label>
				<input type="text" class="form-control" id="name" name="name" >
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
				<label for="subject">상단 설명</label>
				<input type="text" class="form-control myCheck" id="subject" name="subject">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="subject">구성품</label>
				<input type="text" class="form-control myCheck" id="subject" name="subject">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
   				 <label for="content">상품 정보</label>
  				 <textarea class="form-control myCheck" id="content" rows="6" name="content"></textarea>
 				<small id="conResult" class="form-text text-muted"></small>
 			</div>
 			<div class="form-group">
				<label for="subject">상세 정보</label>
				<input type="text" class="form-control myCheck" id="subject" name="subject">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="subject">장바구니 요약</label>
				<input type="text" class="form-control myCheck" id="subject" name="subject">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<input type="button" value="Add" id="add" class="btn btn-warning">
			
			<div id="files" title="${post.boardFiles.size()}">
				
			</div>
			<br>
    		<input type="button" value="Write" id="btn" class="btn btn-info">

		</form>
	</div>

</body>
</html>