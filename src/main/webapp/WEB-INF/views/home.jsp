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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Main css -->
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css">
<!-- 본문과 전체에 적용되는 기본 한글 폰트 링크 -->
<!-- 이 폰트의 스타일은 style.css 파일에 적혀있음 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


<title>Bean Brothers Coffee</title>

</head>
<body>
<c:import url="./member/memberLogin.jsp"></c:import>
<c:import url="./member/memberJoin.jsp"></c:import>
<!-- header 부분 -->
<c:import url="./template/header.jsp"></c:import>

<div class="container">
<!-- Home Section -->
<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>어쩌구 저쩌구 큰 내용 :)</h2>
                    <hr>
               </div>
          </div>
     </div>
</section>


<!-- Portfolio Section -->
<section id="portfolio">
     <div class="container">
          <div class="row">

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/portfolio-img1.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Brand Identity</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/portfolio-img2.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Web Development</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/portfolio-img3.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Mobile App</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/portfolio-img4.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Logo Design</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/portfolio-img5.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Social marketing</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/portfolio-img6.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Fyler Design</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-12 col-sm-12 text-center">
                    <h3>hello, if you interest working together. just send message <a href="#">contact page</a></h3>
               </div>

          </div>
     </div>
</section>
</div>

<!-- footer 영역 -->
<c:import url="./template/footer.jsp"></c:import>

</body>
</html>
