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
<link rel="stylesheet" href="./resources/css/home.css">
<!-- login css -->
<link rel="stylesheet" href="./resources/css/memberLogin.css">
<!-- Join css -->
<link rel="stylesheet" href="./resources/css/memberJoin.css">

<link rel="stylesheet" href="./resources/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">

<title>Bean Bean Coffee</title>
</head>
<body>
	<!-- header 부분 -->
	<c:import url="./template/header.jsp"></c:import>
	<c:import url="./member/memberLogin.jsp"></c:import>
	<c:import url="./member/memberJoin.jsp"></c:import>
	

	<!-- Home -->
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" style="width: 100%;height: 700px !important;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="./resources/images/1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./resources/images/2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./resources/images/3.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./resources/images/4.jpg" alt="Fourth slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./resources/images/5.jpg" alt="Fifth slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>Bean Bean Coffee</h2>
                    <h4>Your personal coffee guide</h4>
                    <hr>
               </div>
<div class="col-md-12">
	<h3>취향에 맞는 다양한 원두를 경험해보세요</h3>
</div>
          </div>
     </div>
</section>

<!-- Portfolio Section -->

<section id="portfolio">
     <div class="container">
          <div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="subtitle" style="text-align: right;">
                        <h2> 5월의 커피 </h2>
                        <hr>
                        <normal>따뜻한 봄을 맞이하기 좋은 커피</normal> 
					</div>
               </div>

               <div class="col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-5">
                    <a href="${pageContext.request.contextPath}/magazine/magazineList">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/a하남.jpg" class="img-responsive" alt="Portfolio" style="width: 100%;">
                                   <div class="portfolio-overlay">     
                                        <div class="portfolio-item">
                                             <h2> Magazine </h2>
                                             <normal>새로운 소식</normal>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>
               <div class="col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-5">
                    <a href="${pageContext.request.contextPath}/product/productList">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/product_img.jpg" class="img-responsive" alt="Portfolio" style="width: 100%;">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h2>Shop</h2>
                                             <normal>원두 구매</normal>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
					<div class="subtitle">
                        <h2> Shop </h2>
                        <hr>
                        <normal>나만을 위한 맞춤 원두</normal> 
					</div>
               </div>

               <div class="col-md-4 col-sm-6">
					<div class="subtitle" style="text-align:right;">
                        <h2> 매장 안내 </h2>
                        <hr>
                        <normal>원두를 직접 맛보고 구매하실 수 있습니다</normal> 
					</div>
               </div>

               <div class="col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-5">
                    <a href="${pageContext.request.contextPath}/location/locationList">
                         <div class="portfolio-thumb">
                              <img src="./resources/images/b합정.jpg" class="img-responsive" alt="Portfolio" style="width: 100%;">
                                   <div class="portfolio-overlay">                     
                                        <div class="portfolio-item">
                                             <h2>Location</h2>
                                             <normal>찾아오시는 길</normal>   
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>


               <div class="col-md-12 col-sm-12 text-center">
                    <h3>커피에 대한 인식, 바리스타에 대한 인식을 바꿉니다.</h3>
               </div>

          </div>
     </div>
</section>
     
	<!-- footer 영역 -->
	<c:import url="./template/footer.jsp"></c:import>

</body>
</html>
