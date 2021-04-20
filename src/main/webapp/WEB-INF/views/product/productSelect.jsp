<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootstrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
	<div id="hi">${product.name}</div>
		<h2 style="display: inline-block;margin:10px">Product Select</h2>
		<a href="./productDelete?productNum=${product.productNum}" class="btn btn-danger btn-sm" style="float:right;margin-top:15px;margin-left:5px">Delete</a>
		<a href="./productUpdate?productNum=${product.productNum}" class="btn btn-secondary btn-sm" style="float:right;margin-top:15px;margin-left:5px">Update</a>
		<a href="./optionManage?productNum=${product.productNum}" class="btn btn-secondary btn-sm" style="float:right;margin-top:15px">옵션관리</a>
			
		<c:if test="${product.options.size()==0}">
			<p style="color:red">
				현재 상품에 등록된 옵션이 없습니다. 옵션이 없으면 구매를 진행할 수 없습니다. 옵션을 추가해주세요.
			</p>
		</c:if>
		
		<table class="table table-hover">
			<tr>
				<td colspan="2">
					<div style="width:300px;height:300px;overflow:hidden">
					<img alt="thumbnail" src="../resources/upload/product/${product.thumbnail.fileName}" style="width:100%;height:100%">
					</div>
				</td>
			</tr>
			<tr>
				<td>Num</td>
				<td>${product.productNum}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${product.name}</td>
			</tr>
			<tr>
				<td>Category</td>
				<td>${product.category}</td>
			</tr>
			<tr>
				<td>Subtitle</td>
				<td>${product.subtitle}
					<c:if test="${product.grinds=='O'}">
						<br>발송일로부터 3일 이내 로스팅된 원두로 보내드립니다.
					</c:if>
				</td>
			</tr>
			<tr>
				<td>Includes</td>
				<td><ul id="inc"></ul></td>
			</tr>	
			</table>
			
			<!-- Cart로 보낼 정보 시작 -->
				
				<div id="optDiv" title="${product.options.size()}">
					옵션<br>
					<c:forEach items="${product.options}" var="option">
						<input type="radio" name="optionNum" value="${option.optionNum}" class="optionNum"> ${option.type} ${option.price} ${option.discountRate}<br>
						${option.optionInfo}<br>
					</c:forEach>	
				</div>
				<c:if test="${product.grinds eq 'O'}">
					갈아드릴까요?&nbsp;
					<select name="grind" title="${product.grinds}" id="selGr">
						<option class="grind">홀빈(갈지 않음)</option>
						<option class="grind">핸드드립/클레버용</option>
						<option class="grind">커피메이커용</option>
						<option class="grind">프렌치프레스용</option>
						<option class="grind">모카포트/에어로프레스용</option>
						<option class="grind">에스프레소 머신용</option>
						<option class="grind">더치/콜드브루용</option>
					</select>
				</c:if>
				<br>수량&nbsp;
					<select name="quantity">
						<c:forEach begin="1" end="20" var="i" step="1">
							<option value="${i}" class="quantity">${i}개</option>
						</c:forEach>
					</select><br><br>
				<input type="button" class="btn btn-info" id="toCart" value="장바구니">
			<!-- Cart로 보낼 정보 끝 -->
			
			<table>
			<tr>
				<td>Contents</td>
				<td>${product.contents}</td>
			</tr>
			<tr>
				<td>Details</td>
				<td><ul id="dtl"></ul></td>
			</tr>
			<tr>
				<td>CartInfo</td>
				<td>${product.cartInfo}</td>
			</tr>
		</table>
			
	</div>
	<div style="margin-bottom:100px"></div>
	<c:import url="../template/footer.jsp"></c:import>

	<script type="text/javascript">
		let txt = '${product.includes}';
		txt = txt.replace(/~/g,"</li><li>");
 		$("#inc").append('<li>'+txt+'</li>');
	
		txt = '${product.details}';
		txt = txt.replace(/~/g, "</li><li>");
		$("#dtl").append('<li>'+txt+'</li>');
	</script>
	<script type="text/javascript" src="../resources/jquery/productSelect.js"></script>

</body>
</html>