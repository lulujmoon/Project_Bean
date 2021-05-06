<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">


	<!-- The Modal -->
	<div class="modal fade" id="login">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" style="font-size: 15px;">로그인</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form action="/bean/member/memberLogin" method="post" name="f1" onsubmit="return loginCheck();">
						<div class="form-group">
							<label for="id">이메일</label> <input type="text"
								class="form-control" id="idL" name="id" aria-describedby="idHelp" required>
						<h6 id="idLResult"></h6>
						</div>
						<div class="form-group">
							<label for="pw">패스워드</label> <input type="password"
								class="form-control" id="pwL" name="pw" required >
						</div>
						
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="idSaveCheck"> <label class="form-check-label"
								for="idSaveCheck">Check me out</label>
						</div>

						
						<button type="submit" id="loginResult" class="login-join-btn btn-block text-nowrap" onclick="loginValidation()">LOGIN</button>
						
					</form>

				</div>

				<!-- Modal footer -->
				<div class="modal-footer">

				<a class="btn underline-btn" style="font-size: 13px;" href="${pageContext.request.contextPath}/member/findPw">비밀번호 분실 &gt;</a>
				<a class="btn underline-btn" style="font-size: 13px;" data-toggle="modal" data-target="#join" style="cursor:pointer;">회원가입 &gt;</a>
					<!-- <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>  -->
				</div>

			</div>
		</div>
	</div>

</div>






<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/memberLogin.js"></script>


