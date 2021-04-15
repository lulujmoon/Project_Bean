<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container mt-3">

  <!-- The Modal -->
  <div class="modal fade" id="join">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">회원가입</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          
          	<div class="container">
		<h2>Member Join Page</h2>
          <form id="frm" action="./member/memberJoin" method="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">이메일</label> <input type="text" class="form-control"
					id="id" name="id" value="">
				<h4 id="idCheckResult"></h4>
				<!-- ID는 이메일형식 -->
			</div>

			<div class="form-group">
				<label for="pw">비밀번호</label> <input type="password"
					class="form-control" id="pw" name="pw">
				<h4 id="pwResult"></h4>
				<!-- PW는 6글자 이상 -->
			</div>

			<div class="form-group">
				<label for="pw">비밀번호 확인</label> <input type="password"
					class="form-control" id="pw2" name="pw2">
			</div>

			<div class="form-group">
				<label for="name">이름</label> <input type="text"
					class="form-control etc" id="name" name="name">
			</div>

			<div class="form-group">
				<label for="phone">닉네임</label> <input type="text"
					class="form-control etc" id="nickname" name="nickname">
			</div>

<br>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="gender" id="inlineRadio1" value="2"> <label
					class="form-check-label" for="inlineRadio1">여자</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="gender" id="inlineRadio2" value="1"> <label
					class="form-check-label" for="inlineRadio2">남자</label>
			</div>

<br>
<br>

			<div class="form-group">
				<label for="email">생년월일</label> <input type="text"
					class="form-control etc" id="birthday" name="birthday">
			</div>


			<input type="hidden" name="point" value="0" >

			이용약관
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="check" value="">동의
				</label>
			</div>
			

			
			
			<div class="jumbotron">
				<h3>이용약관</h3>
				<p>Bootstrap is the most popular HTML, CSS...</p>
			</div>

			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="check" value="">동의
				</label>
			</div>
			<div class="jumbotron">
				<h1>Bootstrap Tutorial</h1>
				<p>Bootstrap is the most popular HTML, CSS...</p>
			</div> 



			<input type="submit" id="btn" value="JOIN" class="btn btn-primary">
		</form>

	</div>

	<script type="text/javascript" src="./resources/jquery/memberJoin.js"></script>
          
          
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
