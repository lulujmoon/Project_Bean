<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>Bean Brothers Coffee</title>

<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>



<!-- Main css -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/style.css">
<!-- findPw css -->
<link rel="stylesheet" href="../resources/css/findPw.css">

<title>비밀번호 분실</title>
<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
</head>
<body>
<!-- header 부분 -->
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
<c:import url="../template/header.jsp"></c:import>



<!-- Contact Section -->

<section id="contact">
     <div class="container">
          <div class="row">

               <div class="section">
                    <div class="section-title">
                         <h3>PASSWORD RESET</h3>
                         <h4>임시 비밀번호를 발급했습니다.<br>
							로그인 후 비밀번호를 변경해 주세요.</h4>
                    </div>
                    
					<div class="wrap">
					<div class="wrap-in">
                         <div style="font-size: 20px; text-align: center;" class="">
                              <h4>임시 비밀번호  : ${memberFind.pw}</h4>

                         </div>
   
                         <div class="section1">
                              <a href="${pageContext.request.contextPath}" class="pw-btn go-login">Login 하러 가기</a>
                         </div>
          </div>
                    </div>
               </div>
                    </div>

     </div>
</section>

<!-- footer 영역 -->
<c:import url="../template/footer.jsp"></c:import>


</body>
</html>
