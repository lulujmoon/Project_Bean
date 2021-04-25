<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Footer Section -->
<!-- footer에만 적용하는 폰트의 링크 -->
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">

<footer>
	<!-- footer에만 적용하는 폰트스타일 -->
     <div class="container">
          <div class="row">
			<!-- logo -->
               <div class="col-md-2 col-sm-3">
                    <img id="coffee" src="${pageContext.request.contextPath}/resources/images/coffee.png" width="100" height="100">
               </div>

               <div class="col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-3">
              	    <p style="margin-top:1rem; font-size: 0.7rem;">
              	    서울특별시 마포구 서교동 447-5 풍성빌딩 2,3,4층 | 02-1234-5678
              	    <br>
                    <a href="mailto:youremail@gmail.com">beanbean@bean.com</a>
                    <br>
                    070-1234-5678
                    <br>
                    Github: <a href="https://github.com/lulujmoon/Project_Bean">https://github.com/lulujmoon/Project_Bean</a>
                    </p>
               </div>

               <div class="col-md-5 col-sm-12">
					<h4> 뉴스레터 받기 </h4>

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