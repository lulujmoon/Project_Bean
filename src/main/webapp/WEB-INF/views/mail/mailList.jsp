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
</head>
<body>
<c:if test="${member.authority ne '1'.charAt(0)}">
	<span id="noAccess">잘못된 접근</span>
</c:if>
	<c:import url="../template/header.jsp"></c:import>
	
	
	<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>Email-list</h2>
                    <h4>Your personal coffee guide</h4>
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


	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>