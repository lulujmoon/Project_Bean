<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<h1>FAQ List Page</h1>
	<br>
		<ul class="list-group list-group-horizontal">
			<a
				href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=배송문의"><li
				class="list-group-item  list-group-item-info">배송문의</li></a>
			<a
				href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=상품문의">
				<li class="list-group-item list-group-item-warning">상품문의</li>
			</a>
			<a
				href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=주문문의"><li
				class="list-group-item  list-group-item-info">주문문의</li></a>
			<a
				href="${pageContext.request.contextPath}/faq/faqList?curPage=1&kind=Category&search=결제문의">
				<li class="list-group-item list-group-item-warning">결제문의</li>
			</a>
		</ul>
	<div id="accordion">

		<c:forEach items="${list}" var="dto">
			<div class="card">
				<div class="card-header">
					<a class="collapsed card-link" data-toggle="collapse"
						href="#col${dto.num}"> ${dto.title} </a>
				</div>

				<div id="col${dto.num}" class="collapse" data-parent="#accordion">
					<div class="card-body">${dto.contents}</div>

					<!-- Modal Button -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#myModal${dto.num}">수정</button>

									<a href="./faqDelete?num=${dto.num}" id="del"
										class="btn btn-outline-light text-dark del">삭제</a>
					<!-- Modal -->
					<div class="modal fade" id="myModal${dto.num}">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">×</button>
									<h4 class="modal-title">faq수정창</h4>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
								
								<div class="form-group">
										<label for="writer">번호</label> <input class="form-control"
											id="num" name="num" value="${dto.num}" readonly>
								
									<div class="form-group">
										<label for="writer">작성자</label> <input class="form-control"
											id="writer" name="writer" value="${dto.writer}" readonly>
									</div>
									<div class="form-group">
										<label for="writer">제목</label> <input class="form-control"
											id="title" name="title" value="${dto.title}" >
									</div>
									<div class="form-group">
										<label for="writer">내용</label> <input class="form-control"
											id="contents" name="contents" value="${dto.contents}">
									</div>
									<div class="form-group">
										<label for="writer">카테고리</label> <input class="form-control"
											id="category" name="category" value="${dto.category}">
									</div>
									
								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn upd" value="${dto.num}">수정</button>
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">닫기</button>
								</div>

							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				
			
		</c:forEach>
	</div>

	<div class="container">
		<ul class="pagination">

			<c:if test="${pager.pre}">
				<li class="page-item"><a class="page-link p"
					href="./faqList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}"
					title="${pager.startNum-1}">Previous</a></li>
			</c:if>

			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">

				<li class="page-item"><a class="page-link p"
					href="./faqList?curPage=${i}&kind=${pager.kind}&search=${pager.search}"
					title="${i}" title="${i}">${i}</a></li>
			</c:forEach>

			<c:if test="${pager.next}">
				<li class="page-item"><a class="page-link p"
					href="./faqList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}"
					title="${pager.lastNum+1}">Next</a></li>
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
					<button class="btn btn-success" type="submit">Search</button>
				</div>
			</form>
		</div>
		
	
				
		<%-- <c:if test="${member.id} eq admin*"> --%>
			<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#myModalW">글쓰기</button>
		<%-- </c:if> --%>
		
		<div class="modal fade" id="myModalW">
						<div class="modal-dialog">
							<div class="modal-content">
		
		<div class="modal-body">
								
						
									<div class="form-group">
										<label for="writer">작성자</label> <input class="form-control"
											id="writer" name="writer" value="admin" readonly>
									</div>
									<div class="form-group">
										<label for="writer">제목</label> <input class="form-control"
											id="title" name="title" >
									</div>
									<div class="form-group">
										<label for="writer">내용</label> <input class="form-control"
											id="contents" name="contents">
									</div>
									<div class="form-group">
										<label for="writer">카테고리</label> <input class="form-control"
											id="category" name="category">
									</div>
									
								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn wri" id="wri">확인</button>
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">닫기</button>
								</div>

							</div>
						</div>
					</div>
				</div>
				</div>
		
		
		
				
		<script type="text/javascript" src="../resources/jquery/faqInsert.js"></script>
		<script type="text/javascript" src="../resources/jquery/faqUpdate.js"></script>


</body>
</html>