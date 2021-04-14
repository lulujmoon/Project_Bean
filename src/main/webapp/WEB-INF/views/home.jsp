<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="./template/bootStrap.jsp"></c:import>

<title>Home</title>


<!-- ajax 시작 -->
<script type="text/javascript">


</script>	

</head>
<body>
<c:import url="./template/header.jsp"></c:import>
	<h1>Project_Bean!</h1>

	<P>The time on the server is ${serverTime}.</P>
	
	<div class="container">
		<form method="post" action="./memberJoin">
		
		
		</form>
	
	</div>
	
	
	
	
	
	
	
</body>
</html>
