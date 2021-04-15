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
						<form action="./memberLogin" method="post">
							<div class="form-group">
								<label for="id">이메일</label> <input type="text"
									class="form-control" id="id" name="id"
									aria-describedby="idHelp"> <small id="idHelp"
									class="form-text text-muted"> We'll never share your id
									with anyone else. </small>
							</div>
							<div class="form-group">
								<label for="pw">패스워드</label> <input type="password"
									class="form-control" id="pw" name="pw">
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
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
			</div>
		</div>

	</div>

	
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
