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
<link rel="stylesheet" href="../resources/css/faqList.css">
<link rel="stylesheet" href="./resources/css/memberLogin.css">
<link rel="stylesheet" href="./resources/css/memberJoin.css">
</head>
<body>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	<c:import url="../template/header.jsp"></c:import>

	<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>FaQ</h2>
                    <h4>Your personal coffee guide</h4>
                    <hr>
               </div>
             </div>
             </div>      
        </section>
          <div class="container">
		<div style="text-align: center; margin: 0 0 20px 0;">
		<a href="${pageContext.request.contextPath}/qna/qnaList">QnA</a> | 
		<a href="${pageContext.request.contextPath}/faq/faqList">FaQ</a> 
	</div>
		
		<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=배송문의">배송문의</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=교환/반품문의">교환/반품문의</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=주문문의">주문문의</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=기타문의">기타문의</a></li>
			

			</ul>

		<div id="accordion">

			<c:forEach items="${list}" var="dto">
				<div class="card">
					<div class="card-header">
						<a class="collapsed card-link" data-toggle="collapse"
							href="#col${dto.num}"> Q. ${dto.title} </a>
					</div>

					<div id="col${dto.num}" class="collapse" data-parent="#accordion">
						<div class="card-body" style="white-space:pre;">${dto.contents}</div>

						<!-- Modal Button -->
						<c:if test="${member.authority eq '1'.charAt(0)}">
						<button type="button" class="btn underline-btn" data-toggle="modal"
							data-target="#myModal${dto.num}">UPDATE</button>

						<a href="./faqDelete?num=${dto.num}" id="del"
							class="btn underline-btn">DELETE</a>
						</c:if>
						<!-- Modal -->
						<div class="modal" id="myModal${dto.num}">
							<div class="modal-dialog">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header">

										<h4 class="modal-title">faq수정</h4>
									</div>

									<!-- Modal body -->
									<div class="modal-body">

										<div class="form-group">
											<label for="num" hidden>번호</label> <input
												class="form-control" id="num" name="num" value="${dto.num}"
												readonly hidden>

											<div class="form-group">
												<label for="writer">작성자</label> <input class="form-control"
													id="writer" name="writer" value="${dto.writer}" readonly>
											</div>
											<div class="form-group">
												<label for="title">제목</label> <input class="form-control"
													id="title" name="title" value="${dto.title}">
											</div>
											<div class="form-group">
												<label for="contents">내용</label>
												<textarea class="form-control" id="contents" cols="30" rows="5" 
												>${dto.contents}</textarea>
										
											</div>
											<div class="form-group">
												<label for="category">category:</label> <select
													name="category" id="category" value="${dto.category}">
													<option value="배송문의">배송문의</option>
													<option value="교환/반품문의">교환/반품문의</option>
													<option value="주문문의">주문문의</option>
													<option value="기타문의">기타문의
													<option>
												</select>
											</div>

										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<button type="button" class="underline-btn" id="upd"
												value="${dto.num}">Update</button>
											<button type="button" class="underline-btn"
												data-dismiss="modal">Close</button>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</c:forEach>
		</div>
		<br>
		<ul class="pagination">

			<c:if test="${pager.pre}">
				<a
					href="./faqList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}"
					title="${pager.startNum-1}">&laquo;</a>
			</c:if>

			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<a class="page-link p"
					href="./faqList?curPage=${i}&kind=${pager.kind}&search=${pager.search}"
					title="${i}">${i}</a>
			</c:forEach>

			<c:if test="${pager.next}">
				<a
					href="./faqList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}"
					title="${pager.lastNum+1}">&raquo;</a>
			</c:if>

		</ul>


		<div class="input-group mt-3 mb-3">
			<form id="frm" action="./faqList" class="form-inline">
				<input type="hidden" name="curPage" value="1" id="curPage">
				<div class="input-group-prepend">
					<select class="form-control" name="kind" id="kind">
						<option class="sel">Category</option>
						<option class="sel">Title</option>
						<option class="sel">Contents</option>
					</select>
				</div>
				<input type="text" class="form-control" name="search" id="search"
					value="${pager.search}" placeholder="">
				<div class="input-group-append">
					<button class="gradient-btn" type="submit">Search</button>
				</div>
			</form>
		</div>



		<c:if test="${member.authority eq '1'.charAt(0)}">
		<button type="button" class="btn underline-btn" data-toggle="modal"
			data-target="#myModalW">Write</button>
		</c:if>

		<div class="modal" id="myModalW">
			<div class="modal-dialog">
				<div class="modal-content">

					<div class="modal-body">


						<div class="form-group">
							<label for="writer">작성자</label> <input class="form-control"
								id="writer" name="writer" value="admin" readonly>
						</div>
						<div class="form-group">
							<label for="writer">제목</label> <input class="form-control"
								id="title" name="title">
						</div>
						<div class="form-group">
							<label for="contents">내용</label>
							<textarea class="form-control" id="contents" cols="30" rows="5"></textarea>
						</div>
						<div class="form-group">
							<label for="category">카테고리:</label> <select name="category"
								id="category">
								<option value="배송문의">배송문의</option>
								<option value="교환/반품문의">교환/반품문의</option>
								<option value="주문문의">주문문의</option>
								<option value="기타문의">기타문의
								<option>
							</select>
						</div>



					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn underline-btn" id="wri">WRITE</button>
						<button type="button" class="btn underline-btn" data-dismiss="modal">CLOSE</button>
					</div>

				</div>
			</div>
		</div>
	</div>


	<br>

	<c:import url="../template/footer.jsp"></c:import>
	<script type="text/javascript" src="../resources/jquery/faqInsert.js"></script>
	<script type="text/javascript" src="../resources/jquery/faqUpdate.js"></script>


</body>
</html>