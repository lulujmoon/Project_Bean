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
		<h2>Product Insert Page</h2>
		
		<form action="./productInsert" method="post">
			상품명 <input type="text" name="name"> <br>
			카테고리 <input type="text" name="category"> <br>
			요약 <input type="text" name="summary"> <br>
			상품정보 <input type="text" name="info"> <br>
			한줄 설명 <input type="text" name="cartInfo"> <br>
			<button>Submit</button>
		</form>
	</div>

</body>
</html>