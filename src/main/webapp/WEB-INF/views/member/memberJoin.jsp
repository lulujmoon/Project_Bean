<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
<div class="container mt-3">

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
				<label for="id">이메일</label> <input type="text" class="form-control"
					id="join-id" name="id" placeholder="이메일" required value="">
					<div id="errorEmail" class="resultEmail resultCheck"></div>
				<h6 id="idCheckResult"></h6>
				<!-- ID는 이메일형식 -->
				<button type="button" class="btn btn-secondary" id="emailCheck"> 중복확인 </button>
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
				<label for="phone">닉네임</label> <input type="text"
					class="form-control etc" id="join-nickname" required name="nickname">
					<h6 id="nicknameResult"></h6>
			</div>

<br>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="gender" id="womanRadio" value="2"> <label
					class="form-check-label" for="inlineRadio1">여자</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="gender" id="manRadio" value="1"> <label
					class="form-check-label" for="inlineRadio2">남자</label>
			</div>
			
<br>
<br>

			<div class="form-group">
				<label for="birthday">생년월일</label> <input type="date"
					class="form-control etc" id="join-birthday" required name="birthday">
			</div>


			<input type="hidden" name="point" value="0" >

				<!-- 이용약관 -->
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="check" value="" required>동의
				</label>
			</div>

			<div class="jumbotron">
				<h3>이용약관</h3>
				<p>Bootstrap is the most popular HTML, CSS...</p>
			</div>

			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="check" value="" required>동의
				</label>
			</div>
			<div class="jumbotron">
				<h1>Bootstrap Tutorial</h1>
				<p>Bootstrap is the most popular HTML, CSS...</p>
			 </div>



			<input type="submit" id="join-bt" value="JOIN" class="btn btn-primary">
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

<script type="text/javascript" src="./resources/js/memberJoin.js"></script>