<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/qnaSelect.css">
 
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	
 <section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>QnA</h2>
                    <h4>Your personal coffee guide</h4>
                    <hr>
               </div>
             </div>
             </div>      
        </section>
          <div class="container">

  <table class="table">

    <tbody>
      <tr>
        <td id="short">Title</td>
        <td>${dto.title}</td>
        <td id="right"></td>
      </tr>
       <tr>
        <td id="short">Writer</td>
        <td>${dto.writer}</td>
        <td id="right">${dto.category}</td>
      </tr>
       <tr>
        <td id="short"> </td>
        <td></td>
        <td id="right">${dto.regDate}</td>
      </tr>
    </tbody>
  </table>
  
 	<div class="contents">
 	<h5>${dto.contents}</h5>
 	</div>
 	
 	<table class="table">
    <tbody>
      <tr>
        <td id="short"></td>
        <td></td>
        <td></td>
      </tr>
      
    </tbody>
  </table>

<a class="underline-btn" href="./qnaList">LIST</a>
<c:if test="${dto.writer eq member.id||member.authority eq '1'.charAt(0)}">
<a class="btn underline-btn" href="./qnaUpdate?num=${dto.num}">UPDATE</a>

<a class="btn underline-btn" id="delete" href="./qnaDelete?num=${dto.num}" >DELETE</a>
</c:if>

<c:if test="${member.authority eq '1'.charAt(0)}">
<a class="btn underline-btn" href="./qnaReply?num=${dto.num}">REPLY</a>
</c:if>

</div>
<br>

<c:import url="../template/footer.jsp"></c:import>	
<script type="text/javascript" src="../resources/jquery/qnaInsert.js"></script>
</body>
</html>