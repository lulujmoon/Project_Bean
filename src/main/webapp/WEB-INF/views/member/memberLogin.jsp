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
					<h4 class="modal-title">로그인</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form action="/bean/member/memberLogin" method="post" onsubmit="return loginCheck();">
						<div class="form-group">
							<label for="id">이메일</label> <input type="text"
								class="form-control" id="idL" name="id" aria-describedby="idHelp" required>
						<h6 id="idLResult"></h6>
						</div>
						<div class="form-group">
							<label for="pw">패스워드</label> <input type="password"
								class="form-control" id="pwL" name="pw" required>
						</div>
						
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Check me out</label>
						</div>

						
						<button type="submit" class="btn btn-primary">로그인</button>
						
					</form>

				</div>

				<!-- Modal footer -->
				<div class="modal-footer">

				<a href="${pageContext.request.contextPath}/member/findPw">비밀번호 분실 &gt;</a>
				<a data-toggle="modal" data-target="#join" style="cursor:pointer;">회원가입 &gt;</a>
					<!-- <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>  -->
				</div>
				<a id="kakao-login-btn"></a> 
				<a href="http://developers.kakao.com/logout">Logout</a>
			

			</div>
		</div>
	</div>

</div>






<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/memberLogin.js"></script>




<!-- 
<a href = "https://kauth.kakao.com/oauth/authorize?client_id="3764e317ada450c0e2799aab5377c09f"&redirect_uri="http://localhost/bean/member/memberLogin.jsp"&response_type=code">
        로그인
    </a>
 -->

<script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('969c954537bd868d510e8f40a4ce5a09');
        // 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
                alert(JSON.stringify(authObj));
                console.log(JSON.stringify(authObj))
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
      //]]>
</script>
