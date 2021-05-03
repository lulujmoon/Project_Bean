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
					<h4 class="letter" style="color: #666; font-size: 12px; font-weight: normal; letter-spacing: 2px; margin:0px 0px 8px 0px; text-align: left;"> 뉴스레터 받기 </h4>
					<form id="frm" action="${pageContext.request.contextPath}/mail/mailInsert" method="post">
					<div id="mAddr">
					<input type="email" id="mAddr" name="mAddr" placeholder="이메일을 입력하세요" autofocus required style="input:focus ;
	 				outline:none; background-color:transparent; border:none; border-bottom: 1px solid">

					<button type="submit" value="submit" class="underline-btn" id="check" onclick="checkform()"	
					style="margin-top:0px; margin-left:5px; font-size:12px; background-color:transparent;
					border: none;">확인</button>
					<div id="check" style="font-size: 12px; vertical-align:-3px; margin-top: 5px;">
					<input type="checkbox" id="checkbox">
					이메일 수집동의
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
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/emailCheck.js"></script>
</footer>