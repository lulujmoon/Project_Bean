<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/setting.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<br>
	<div class="container">
	<h3 id="h" title="${product.productNum}" style="display:inline-block;">${product.name}</h3>
	
	<!-- Options List -->
	<input type="button" value="추가" id="add" class="btn btn-sm btn-secondary" style="float:right;margin-right:13px">
	<p>최소 하나의 옵션이 필요하며, 옵션이 하나일 때는 옵션명과 옵션 설명이 노출되지 않으므로 적지 않아도 됩니다.</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<td>옵션명</td>
				<td>옵션 설명</td>
				<td>정가</td>
				<td>할인율</td>
				<td>재고</td>
				<td></td>
				<td></td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="option">
				<tr>
					<td>${option.type}</td>
					<td>${option.optionInfo}</td>
					<td>${option.price}</td>
					<td>${option.discountRate}</td>
					<td>${option.stock}</td>
					<td style="width:5%" class="edit" title="${option.optionNum}"><input type="button" value="수정" class="btn btn-sm btn-secondary"></td>
					<td style="width:5%"><input type="button" value="삭제" class="del btn btn-sm btn-danger" title="${option.optionNum}"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<div id="sample" style="display:none">
		<h5 id="tit">Option</h5><br>
		<form action="./optionInsert" method="post" id="frm">
			<input type="hidden" name="productNum" value="${product.productNum}">
			<div class="form-group">
				<label for="type">옵션명</label>
				<input type="text" class="form-control myCheck" id="opt1" name="type" placeholder="용량 또는 커피명을 적어주세요.">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="optionInfo">옵션 설명</label>
				<input type="text" class="form-control myCheck" id="opt2" name="optionInfo">
				<small id="subResult" class="form-text text-muted"></small>
			</div>	
			<div class="form-group">
				<label for="price">정가</label>
				<input type="text" class="form-control myCheck" id="opt3" name="price">
				<small id="subResult" class="form-text text-muted"></small>
			</div>					
			<div class="form-group">
				<label for="discountRate">할인율</label>
				<input type="text" class="form-control myCheck" id="opt4" name="discountRate" placeholder="소수점으로 적어주세요. 예) 10% 할인: 0.1">
				<small id="subResult" class="form-text text-muted"></small>
			</div>	
			<div class="form-group">
				<label for="stock">재고</label>
				<input type="text" class="form-control myCheck" id="opt5" name="stock">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<button class="btn btn-sm btn-secondary">추가</button>				
		</form>
		</div>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
	<script type="text/javascript" src="../resources/jquery/optionManage.js"></script>
</body>
</html>