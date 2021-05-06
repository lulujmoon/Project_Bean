<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/mailList.css">
<link rel="stylesheet" href="./resources/css/memberLogin.css">
<link rel="stylesheet" href="./resources/css/memberJoin.css">
<link rel="stylesheet" href="../resources/css/admin.css">
</head>
<body>
<c:import url="../template/adminheader.jsp"></c:import>

	<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	
	<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>구독관리</h2>
                    
                    <hr>
               </div>
             </div>
             </div>      
        </section>

 <div class="container">     
  <table class="table table-hover">
    <thead>
      <tr>
        <th>메일주소</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="dto" >
      <tr>
        <td>
${dto.mAddr}
        </td>
      </tr>
</c:forEach>    
    </tbody>
  </table>

<a class="btn underline-btn" href="./sendMail">SEND EMAIL</a>
</div>


</body>
</html>