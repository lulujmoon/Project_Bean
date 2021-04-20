<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootstrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<!-- Portfolio Section -->
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<h2 style="margin:10px;text-align:center">Products</h2>

	<div style="text-align: center">
		<a href="./productList?category=coffee">Coffee</a> | 
		<a href="./productList?category=brewingTool">Brewing Tool</a> | 
		<a href="./productList?category=gift">Gift</a> | 
		<a href="./productList?category=dripbag">Dripbag</a> | 
		<a href="./productList?category=Coldbrew">Coldbrew</a>
	</div>

</div>
<section id="portfolio">
     <div class="container">
          <div class="row">
			<c:forEach items="${list}" var="product">
               <div class="col-md-4 col-sm-6" style="width:90%;height:80%;overflow:hidden">
                    <a href="./productSelect?productNum=${product.productNum}">
                         <div class="portfolio-thumb">
                              <img src="../resources/upload/product/${product.thumbnail.fileName}" class="img-responsive" alt="Portfolio" style="width:100%;height:100%">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>${product.name}</h3>
                                             <small>${product.subtitle} </small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>
			</c:forEach>
               <div class="col-md-12 col-sm-12 text-center">
                    <h3>hello, if you interest working together. just send message <a href="#">contact page</a></h3>
               </div>

          </div>
     </div>
</section>
</body>
</html>