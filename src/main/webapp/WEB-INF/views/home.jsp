<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:import url="./template/bootStrap.jsp"></c:import>
<!-- meta Data -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Main css -->
<link rel="stylesheet" href="./resources/css/style.css">

<!-- Join css 
<link rel="stylesheet" href="./resources/css/join.css">
-->
<link rel="stylesheet" href="./resources/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>Bean Brothers Coffee</title>

</head>
<body>
	<!-- header 부분 -->
	<c:import url="./template/header.jsp"></c:import>
	<c:import url="./member/memberLogin.jsp"></c:import>
	<c:import url="./member/memberJoin.jsp"></c:import>


		<!-- Single Project Section -->

<div>
	<img src="./resources/images/인천.jpg" style="width: 100%; object-fit: cover;">
</div>
<section id="single-project">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h1>Bean Bean Coffee</h1>
                    <p>
                    <h3>Your personal coffee guide</h3>
                    </p>             


                    <div class="col-md-6 col-sm-6">
                         <img src="./resources/images/product_img.jpg" class="img-responsive">
                    </div>

                    <div class="col-md-6 col-sm-6">
                         <img src="./resources/images/portfolio-img3.jpg" class="img-responsive">
                    </div>

                    <div class="clearfix"></div>

                    <div class="col-md-4 col-sm-4">
                         <h3>Role</h3>
                         <p>Brand Identity</p>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <h3>Date</h3>
                         <p>December, 2015</p>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <h3>Agency</h3>
                         <p>Client Name here</p>
                    </div>

                    <div class="col-md-12 col-sm-12 text-center">
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                         <strong>James Otto ( Project Manager )..</strong>
                    </div>
               </div>

          </div>
     </div>
</section>

	<!-- footer 영역 -->
	<c:import url="./template/footer.jsp"></c:import>

</body>
</html>
