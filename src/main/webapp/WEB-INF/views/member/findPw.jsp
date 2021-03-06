<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
 -->
<title>Bean Brothers Coffee</title>

<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>


<!-- Main css -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/style.css">
<!-- findPw css -->
<link rel="stylesheet" href="../resources/css/findPw.css">
<link rel="stylesheet" href="../resources/css/memberLogin.css">
<link rel="stylesheet" href="../resources/css/memberJoin.css">

<title>비밀번호 분실</title>
<!-- <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet"> -->
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
                    <div class="section-title" style="margin-bottom: -25px;">
                         <h3>PASSWORD RESET</h3>
                         <h4>가입하신 이메일과 성함을 적어주시면 <br>
                         	임시 비밀번호를 발급해드립니다.</h4>
                    </div>
                    
					<div class="wrap">
					<div class="wrap-in" style="text-align: center;">
                    <form action="./findPw" method="post" onsubmit="return submitCheck();" >
                   
                         <div class="col-md-6 col-sm-6">
                              <input type="email" class="form-control" id="id" name="id" placeholder="Email" required>
                         </div>
                         <div class="col-md-6 col-sm-6">
                              <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                         </div>
   
                         <div class="section1">
                              <button type="submit" class="pw-btn">ISSUE PASSWORD</button>
                         </div>
                    </form>
                         </div>
                    </div>
                    </div>
               </div>

          </div>
</section>

<!-- footer 영역 -->
<c:import url="../template/footer.jsp"></c:import>


<script type="text/javascript" src="../resources/jquery/findPw.js"></script>
</body>
</html>
