<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container">

	<!--   The Modal -->
	<div class="modal fade" id="join">
		<div class="modal-dialog">
			<div class="modal-content">

				<!--  Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">회원가입</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!--  Modal body -->
				<div class="modal-body">


					<h2>Member Join Page</h2>
					<form id="frm" action="./member/memberJoin" method="post" onsubmit="return submitCheck();">

						<div class="form-group">
							<label for="id">이메일</label> <input type="text"
								class="form-control" id="join-id" name="id" placeholder="이메일"
								required value="">
							<div id="errorEmail" class="resultEmail resultCheck"></div>
							<h6 id="idCheckResult"></h6>
							<!-- ID는 이메일형식 -->
							<button type="button" class="btn btn-secondary" id="emailCheck">
								중복확인</button>
						</div>

						<div class="form-group">
							<label for="pw">비밀번호</label> <input type="password"
								class="form-control" id="join-pw" required name="pw">
							<h6 id="pwResult"></h6>
							<!-- PW는 6글자 이상 -->
						</div>

						<div class="form-group">
							<label for="pw">비밀번호 확인</label> <input type="password"
								class="form-control" id="join-pw2" required name="pw2">
							<h6 id="pw2Result"></h6>
						</div>

						<div class="form-group">
							<label for="name">이름</label> <input type="text"
								class="form-control etc" id="join-name" required name="name">
						</div>

						<div class="form-group">
							<label for="nickname">닉네임</label> <input type="text"
								class="form-control etc" id="join-nickname" required
								name="nickname">
							<h6 id="nickResult"></h6>
						</div>

						<br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="womanRadio" value="2"> <label
								class="form-check-label" for="inlineRadio1">여자</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="manRadio" value="1"> <label class="form-check-label"
								for="inlineRadio2">남자</label>
						</div>

						<br> <br>

						<div class="form-group">
							<label for="birthday">생년월일</label> <input type="date"
								class="form-control etc" id="join-birthday" required
								name="birthday">
						</div>


						<input type="hidden" name="point" value="0">

						<!-- 이용약관 -->
						<div class="form-check">
							<label class="form-check-label"> <input type="checkbox"
								class="check" value="" required>동의
							</label>
						</div>

						<div class="jumbotron">
							<div class="jb">
								<h3>이용약관</h3>
								<p>Bootstrap is the most popular HTML, CSS...</p>
							</div>
						</div>

						<div class="form-check">
							<label class="form-check-label"> <input type="checkbox"
								class="check" value="" required>동의
							</label>
						</div>
						<div class="jumbotron">
							<div>
								<h1 class="display-4">개인정보수집 및 이용에 대한 안내</h1>
								<p class="lead">This is a simple hero unit, a simple
									jumbotron-style component for calling extra attention to
									featured content or information.</p>
								<hr class="my-4">
								<p>It uses utility classes for typography and spacing to
									space content out within the larger container.</p>
								<p class="lead">
									<a class="btn btn-primary btn-lg" href="#" role="button">Learn
										more</a>
								</p>
							</div>
						</div>



						<input type="submit" id="join-bt" value="JOIN"
							class="btn btn-primary">
					</form>


				</div>
				<!--  Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>

</div>

<script type="text/javascript" src="./resources/jquery/memberJoin.js"></script>