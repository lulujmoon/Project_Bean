/**
 * 
 */

$("#btn").click(function(){
	
	var title = $("#title").val();
	var con = $("#con").val();
	var contents = $("#contents").val();
	var category = $("#category").val();

	
	if(title==""){
		alert("제목을 입력하세요");
		title.focus();
		return false;
	}
	
		if(con==""){
		alert("숫자6자리 비밀번호를 입력하세요");
		con.focus();
		return false;
	}
	
		if(contents==""){
		alert("내용을 입력하세요");
		contents.focus();
		return false;
	}
		if(category==""){
		alert("카테고리를 선택하세요");
		category.focus();
		return false;
	}
	
});




	$("#delete").click(function(){
		if(confirm("삭제하시겠습니까?")){
		return true;
		}else{
		return false;
		}
	});
	
	
