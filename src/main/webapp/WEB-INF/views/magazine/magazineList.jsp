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
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h2>MAGAZINE</h2>
				<hr>
				<h6>스토리</h6>
			</div>
		</div>

		<div class="brick-section-container">
			<c:forEach items="${list}" var="dto">
				<a href="#" data-toggle="modal" data-target="#myModal${dto.num}"> <img
					src="../resources/upload/magazineT/${dto.listImage.fileName}"
					width="500" height="300"></a>

				<!-- The Modal -->
				<div class="modal fade" id="myModal${dto.num}">
					<div class="modal-dialog modal-xl">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<div class="col-md-12">
								<h5 class="col-md-12" id="modal-category">${dto.category}</h5>
								</div>
								<div class="col-md-12">
								<h5 class="col-md-12" id="modal-title">${dto.title}</h5>
								</div>
							</div>

							<!-- Modal body -->
							<div class="modal-body">${dto.contents}</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>
















			</c:forEach>















		</div>




		<div>
			<a href="./magazineInsert">인서트</a>
		</div>

	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>