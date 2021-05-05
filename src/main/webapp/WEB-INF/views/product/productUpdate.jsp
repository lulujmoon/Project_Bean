<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:if test="${member.authority ne '1'.charAt(0)}">
	<span id="noAccess">잘못된 접근</span>
</c:if>
<c:if test="${member.authority eq '1'.charAt(0)}">

<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<br>
		<h2>상품 수정</h2>
		<br>		
		<form action="./productUpdate" method="post" id="frm" enctype="multipart/form-data">
			<input type="hidden" name="productNum" value="${product.productNum}">
			<div class="form-group">
				<label for="thumbnail">썸네일</label>
				<input type="file" name="file"> 
				<br><span style="color:grey;font-size:14px;">썸네일 이미지를 업로드하지 않으면 기존 이미지를 그대로 사용합니다.</span>
			</div>
			<div class="form-group">
				<label for="name">상품명</label>
				<input type="text" class="form-control" id="name" name="name" value="${product.name}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="category">카테고리</label>
				<select name="category">
					<option value="coffee" class="category">커피</option>
					<option value="brewingTool" class="category">브루잉 도구</option>
					<option value="gift" class="category">선물</option>
					<option value="dripbag" class="category">드립백</option>
					<option value="coldbrew" class="category">콜드브루</option>
				</select>
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="subtitle">상단 설명</label>
				<input type="text" class="form-control myCheck" id="subtitle" name="subtitle" value="${product.subtitle}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="includes">구성품</label>
				<input type="text" class="form-control myCheck" id="includes" name="includes" placeholder="리스트를 ~로 구분해주세요. 예) 클레버 드리퍼~칼리타 필터 100매" value="${product.includes}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
   				 <label for="contents">상품 정보</label>
  				 <textarea class="form-control myCheck" id="contents" name="contents" value="${product.contents}"></textarea>
 				<small id="conResult" class="form-text text-muted"></small>
 			</div>
 			<div class="form-group">
				<label for="details">상세 정보</label>
				<input type="text" class="form-control myCheck" id="details" name="details" placeholder="리스트를 ~로 구분해주세요. 예) 제조사 : E.K. International Co.~원산지 : 대만" value="${product.details}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="cartInfo">장바구니 요약</label>
				<input type="text" class="form-control myCheck" id="cartInfo" name="cartInfo" value="${product.cartInfo}">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
			<div class="form-group">
				<label for="grinds">분쇄도 옵션</label>
					<input type="radio" name="grinds" value="O" class="grinds" id="yes"> <label for="yes">네</label>
					<input type="radio" name="grinds" value="X" class="grinds" id="no"> <label for="no">아니오</label>		
				<small id="subResult" class="form-text text-muted"></small>
			</div>			
    		<button class="btn btn-outline-secondary">Write</button><br><br><br>


		</form>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</c:if>
	
<!-- Script -->
<script type="text/javascript">
	if($("#noAccess").text()=="잘못된 접근"){
		alert("잘못된 접근입니다.");
		history.back();
	}
</script>
<script type="text/javascript" src="../resources/jquery/summernote.js"></script>
<script type="text/javascript">
	for(gr of $(".grinds")){
		if($(gr).val()=='${product.grinds}'){
			$(gr).prop("checked", true);
		}
	}
	for(ct of $(".category")){
		if($(ct).val()=='${product.category}'){
			$(ct).prop("selected", true);
		}
	}
</script>
</body>
</html>