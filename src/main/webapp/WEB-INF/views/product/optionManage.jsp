<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean Bean Coffee</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>

<link rel="stylesheet" href="../resources/css/memberLogin.css">
<link rel="stylesheet" href="../resources/css/memberJoin.css">
</head>
<body>
<c:if test="${member.authority ne '1'.charAt(0)}">
	<span id="noAccess">잘못된 접근</span>
</c:if>
<c:if test="${member.authority eq '1'.charAt(0)}">

<c:import url="../template/header.jsp"></c:import>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	<br>
	<div class="container">
	<h3 id="h" style="display:inline-block;">${product.name}</h3>
	
	<!-- Options List -->
	<input type="button" value="추가" id="add" class="btn btn-outline-secondary btn-sm" style="float:right;margin-right:5px">
	<input type="button" value="상품 페이지로 돌아가기" id="back" title="${product.productNum}" class="btn btn-outline-secondary btn-sm" style="float:right;margin-right:13px">
	<c:if test="${list.size()==0}">
		<p style="color:red" id="warning" title="${list.size()}"> 옵션이 없습니다. 최소 하나의 옵션이 필요합니다.</p>
	</c:if>	
	<table class="table table-hover">
		<thead>
			<tr>
				<td>옵션명</td>
				<td>옵션 설명</td>
				<td>재고</td>
				<td>정가</td>
				<td>할인율</td>
				<td>할인가</td>
				<td></td>
				<td></td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="option">
				<tr>
					<td>${option.type}</td>
					<td>${option.optionInfo}</td>
					<td>${option.stock}</td>
					<td>${option.price}</td>
					<td>${option.discountRate}</td>
					<td>${option.afterPrice}</td>
					<td style="width:5%" class="edit" title="${option.optionNum}"><input type="button" value="수정" class="btn btn-outline-secondary btn-sm"></td>
					<td style="width:5%"><input type="button" value="삭제" class="del btn btn-sm btn-outline-danger" title="${option.optionNum}"></td>
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
				<label for="stock">재고</label>
				<input type="text" class="form-control myCheck" id="opt3" name="stock" onkeypress="onlyNum()">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="price">정가</label>
				<input type="text" class="form-control myCheck" id="opt4" name="price" onkeypress="onlyNum()">
				<small id="subResult" class="form-text text-muted"></small>
			</div>					
			<div class="form-group">
				<label for="discountRate">할인율</label>
				<input type="text" class="form-control myCheck" id="opt5" name="discountRate" placeholder="소수점으로 적어주세요. 할인하지 않으면 0을 적어주세요. 예) 10% 할인: 0.1" onkeypress="onlyNum()">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="afterPrice">할인가</label>
				<input type="text" class="form-control myCheck" id="opt6" name="afterPrice" readonly="readonly">
				<small id="subResult" class="form-text text-muted"></small>
			</div>	
			<button class="btn btn-outline-secondary btn-sm">추가</button>				
		</form>
		</div>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
</c:if>
<script type="text/javascript">
	if($("#noAccess").text()=="잘못된 접근"){
		alert("잘못된 접근입니다.");
		history.back();
	}
</script>
<script type="text/javascript" src="../resources/jquery/optionManage.js"></script>
</body>
</html>