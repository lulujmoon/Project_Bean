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
	
	<div class="container">
		<form action="./optionUpdate" method="post">
			<div class="form-group">
				<label for="includes">옵션 종류</label>
				<select>
					<option>용량</option>
					<option>커피</option>
				</select>
			</div>
			<div class="form-group">
				<label for="includes">옵션명</label>
				<input type="text" class="form-control myCheck" id="includes" name="includes" placeholder="~로 구분해주세요.">
				<small id="subResult" class="form-text text-muted"></small>
			</div>
		
		</form>
	</div>
	
</body>
</html>