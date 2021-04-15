<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Product Update Page</h2>
		
		<form action="./productUpdate" method="post">
			<input type="hidden" name="num" value="${dto.num}">
			상품명 <input type="text" name="name" value="${dto.name}"> <br>
			카테고리 <input type="text" name="category" value="${dto.category}"> <br>
			요약 <input type="text" name="summary" value="${dto.summary}"> <br>
			상품정보 <input type="text" name="info" value="${dto.info}"> <br>
			한줄 설명 <input type="text" name="cartInfo" value="${dto.cartInfo}"> <br>
			<button>Submit</button>
		</form>
	</div>

</body>
</html>