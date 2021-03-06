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
<link rel="stylesheet" href="../resources/css/magazineList.css">
<link rel="stylesheet" href="../resources/css/memberLogin.css">
<link rel="stylesheet" href="../resources/css/memberJoin.css">
</head>
<body>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	<c:import url="../template/header.jsp"></c:import>

	<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>Magazine</h2>
                    <h4>Your personal coffee guide</h4>
                    <hr>
               </div>
             </div>
             </div>      
        </section>

 <div class="container">
		<div class="brick-section-container">
		
			<div class="row">
			<c:forEach items="${list}" var="dto">
			
				<div class="col-md-6" id="imgList"><a href="#" data-toggle="modal" data-target="#myModal${dto.num}"><img
					src="../resources/upload/magazineT/${dto.listImage.fileName}"
					width="550" height="300"></a>
					<div class="subText">
					<p class="titleText">${dto.title}</p>
					<p class="titleSub">${dto.subTitle}</p>
					
					</div>
					
					
					</div>

				<!-- The Modal -->
				<div class="modal fade" id="myModal${dto.num}">
					<div class="modal-dialog modal-xl">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header" style="flex-direction: column">
								
								<h5 class="col-md-12" id="modal-category">${dto.category}</h5>
								<h5 class="col-md-12" id="modal-title">${dto.title}</h5>
								<hr class="hrShort">
								
							</div>

							<!-- Modal body -->
							<div class="subTitle">${dto.subTitle}
							
							</div>

							<div class="modal-body">
							<hr>
							${dto.contents}</div>
							
							<!-- Modal footer -->
							<div class="modal-footer">
								<div class="col-md-12 text-center">
								<c:if test="${member.authority eq '1'.charAt(0)}">
								<a href="./magazineUpdate?num=${dto.num}"><button type="button" class="btn underline-btn">Update</button></a>
							</c:if> 
							<a href="./magazineDelete?num=${dto.num}"><button type="button" class="btn underline-btn">Delete</button></a>
								<button type="button" class="btn underline-btn"
									data-dismiss="modal">Close</button>
									</div>
							</div>

						</div>
					</div>
				</div>


			</c:forEach>
			</div>
</div>

		</div>


<div class="container">

		<div>
		<c:if test="${member.authority eq '1'.charAt(0)}">
		<a class="btn underline-btn" href="./magazineInsert">Write</a>
		</c:if>
		</div>

	
</div>
	<br>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>