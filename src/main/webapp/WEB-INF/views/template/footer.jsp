<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Footer Section -->
<!-- footer에만 적용하는 폰트의 링크 -->
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">

<footer>
	<!-- footer에만 적용하는 폰트스타일 -->
     <div class="container"">
          <div class="row">
			<!-- logo -->
               <div class="col-md-3 col-sm-3">
                    <img id="coffee" src="${pageContext.request.contextPath}/resources/images/coffee.png" width="100" height="100">
               </div>

               <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-3" style="font-family: 'Orelega One';">
                    <p><a href="mailto:youremail@gmail.com">beanbean@bean.com</a></p>
                    <p>070-1234-5678</p>
               </div>

               <div class="clearfix col-md-12 col-sm-12">
               
              
                    <p>서울특별시 마포구 서교동 447-5 풍성빌딩 2,3,4층</p>
            
               
                    <hr>
               </div>
				
			<!-- footer의 맨 밑 -->
               <div class="col-md-6 col-sm-6" style="font-family: 'Orelega One';">
                    <div class="footer-copyright">
                         <p>©Project_team 6 | All Rights Reserved.</p>
                    </div>
               </div>

               <div class="col-md-6 col-sm-6" style="font-family: 'Orelega One';">
                    <ul class="social-icon">
                         <li><a href="#" class="fa fa-facebook"></a></li>
                         <li><a href="#" class="fa fa-twitter"></a></li>
                         <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
               </div>
               
          </div>
     </div>
</footer>