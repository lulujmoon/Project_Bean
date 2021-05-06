<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
 <div class="navbar-header navbar-default navbar-static-top" role="navigation" style="background: white;">
   <div class="container" style="font-family: 'Orelega One';">
         <div class="row" style="height: 30px; float:top;">
            <div class="col-lg-12" style="float:left; padding-left:0;">
               <!-- 오른쪽 로그인, 회원가입-->
                <div class="col-xs-3">

                     <a href="${pageContext.request.contextPath}/">
                     <span style="color: black;">Bean Bean Coffee</span>
                     </a>
                    <div class="col-xs-9" style="float:right; padding-right: 8px;">
                	  <small style="margin-right: 10px; color: black;"> 현재 ${member.id} 으로 로그인 중</small>
               		</div>
                </div>
            </div>
         </div>
      </div>
   </div>
<div class="col-md-2" style="padding-left:0;float:left;">
	<div id="mySidenav" class="sidenav">
		<a href="${pageContext.request.contextPath}/" class="navbar-brand">
			<img id="coffee" src="${pageContext.request.contextPath}/resources/images/coffeelogo_white.png" width="90" height="90">
		</a>
	
		<a href="${pageContext.request.contextPath}/admin/memberList">회원 관리</a> 
		<a href="${pageContext.request.contextPath}/admin/orderManage">주문 관리</a> 
		<a href="${pageContext.request.contextPath}/admin/productManage">상품 관리</a> 
		<a href="${pageContext.request.contextPath}/admin/mailList">구독 관리</a>
	</div>
</div>



		


