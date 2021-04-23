<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container mt-3">


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
					<form action="./member/memberLogin" method="post">
						<div class="form-group">
							<label for="id">이메일</label> <input type="text"
								class="form-control" id="idL" name="id" aria-describedby="idHelp">
							<small id="idHelp" class="form-text text-muted"> We'll
								never share your id with anyone else. </small>
						</div>
						<div class="form-group">
							<label for="pw">패스워드</label> <input type="password"
								class="form-control" id="pwL" name="pw">
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
					<!-- <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>  -->
				</div>
				<a id="kakao-login-btn"></a> 
				<a href="http://developers.kakao.com/logout">Logout</a>

			</div>
		</div>
	</div>

</div>



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

    
<!-- 	

	<div class="container">
		<h2>Member Login Page</h2>

		<form action="./memberLogin" method="post">
			<div class="form-group">
				<label for="id">ID</label> 
				<input type="text" class="form-control" id="id" name="id"
					aria-describedby="idHelp"> 
					<small id="idHelp" class="form-text text-muted">
					We'll never share your id with anyone else.
					</small>
			</div>
			<div class="form-group">
				<label for="pw">Password</label> 
				<input type="password" class="form-control" id="pw" name="pw">
			</div>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>
 -->