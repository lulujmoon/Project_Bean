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
	<c:import url="../template/header.jsp"></c:import>
	
	
<div class="container">

<div class="contents">
 <h3 class="MailTitle">Email-List</h3>          
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

<a class="underline-btn" href="./sendMail">SEND EMAIL</a>
</div>

</div>

	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>