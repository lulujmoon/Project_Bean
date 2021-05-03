<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Footer Section -->
<footer>
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
                    <a href="mailto:youremail@gmail.com">06beanbean@gmail.com</a>
                    <br>
                    070-1234-5678
                    <br>
                    Github: <a href="https://github.com/lulujmoon/Project_Bean">https://github.com/lulujmoon/Project_Bean</a>
                    </p>
               </div>

               <div class="col-md-5 col-sm-12">
					<h4> 뉴스레터 받기 </h4>
					<form id="frm" action="${pageContext.request.contextPath}/mail/mailInsert" method="post">
					<div id="mAddr">
					<input type="text" id="mAddr" name="mAddr" placeholder="이메일형식으로 입력하세요">
					<button type="submit" value="submit" class="underline-btn" id="check"
			
					style="margin-top:0; margin-left:5px; font-size:12px; background-color:transparent;
					border: none;">확인</button>
					<div>
					<input type="checkbox" id="checkbox">
					<h5 style="font-size: 12px;">이메일 수집동의</h5>
					</div>
					</div>
					</form>
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
     <script type="text/javascript" src="../resources/js/emailCheck.js"></script>
</footer>