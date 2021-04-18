<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<h1>kakao login redirect form</h1>




<a href="javascript:kakaoLogin();"><img src="https://gb.go.kr/Main/Images/ko/member/certi_kakao_login.png" style="height: 60px;width: auto;"></a>




<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
window.Kakao.init("969c954537bd868d510e8f40a4ce5a09");


function kakaoLogin() {
	window.Kakao.Auth.login({
		scope:'profile,	account_email, gender,	birthday',
		success: function(authObj) {
			console.log(authObj);
			window.Kakao.API.request({
				url:'/v2/user/me',
				success: res => {
					const kakao_account = res.kakao_account;
					console.log(kakao_account);
				}
			});
		}
	})	
}



</script>


</body>
</html>