<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../resources/js/admin.js"></script>
<!-- Header -->
 <div class="navbar-header navbar-default navbar-static-top" role="navigation">
   <div class="container" style="font-family: 'Orelega One';">
         <div class="row" style="height: 30px; float:top;">
            <div class="col-lg-12" style="float:left; padding-left:0;">
               <!-- 오른쪽 로그인, 회원가입-->
                <div class="col-xs-3">

                     <a href="${pageContext.request.contextPath}/">
                     <span>Bean Bean</span>
                     </a>
                    <div class="col-xs-9" style="float:right; padding-right: 8px;">
										  
            	      <a href="${pageContext.request.contextPath}/admin/adminmenu">
                      <span class="glyphicon glyphicon-user" style="margin-right: 10px; cursor:pointer;"> Admin </span>
                      </a>
                	
                	  <small> 현재 ${member.id} 으로 로그인 중</small>
               </div>
                </div>
            </div>
         </div>
      </div>
   </div>
<div class="col-md-2" style="padding-left:0;float:left;">
<div id="mySidenav" class="sidenav">
		<button class="btn" data-toggle="collapse" data-target=".navbar-collapse">
		</button>
				<a href="${pageContext.request.contextPath}/" class="navbar-brand">
					<img id="coffee" src="${pageContext.request.contextPath}/resources/images/coffee.png" width="50" height="50">
				</a>

		<a href="../member/memberList">회원관리</a> 
		<a href="#">주문관리</a> 
		<a href="#">재고관리</a> 
		<a href="#">구독관리</a>
</div>
</div>



		


