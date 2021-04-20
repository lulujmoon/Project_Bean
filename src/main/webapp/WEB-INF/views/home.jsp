<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:import url="./template/bootstrap.jsp"></c:import>
<!-- meta Data -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Link -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="./resources/css/style.css">

<!-- 기존 템플릿 폰트 링크<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap"
	rel="stylesheet">


<!-- SCRIPTS -->
<script src="./resources/js/jquery.js"></script>
<script src="./resources/js/custom.js"></script>

</head>
<body>

<!-- header 부분 -->
<c:import url="./template/header.jsp"></c:import>

<!-- PRE LOADER : 시작 전 spin이 도는 부분! -->
<!-- <div class="preloader">
     <div class="sk-spinner sk-spinner-wordpress">
          <span class="sk-inner-circle"></span>
     </div>
</div> -->

<!-- 잘 들어 왔는가~ --><h1>
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


<!-- footer 영역 -->
<c:import url="./template/footer.jsp"></c:import>

</body>
</html>
