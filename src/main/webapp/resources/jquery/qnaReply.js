/**
 * 
 */

$("#btn").click(function(){
	
	var title = $("#title").val();
	var con = $("#con").val();
	var contents = $("#contents").val();
	var category = $("#category").val();
	var check = true;
	
	if(title==""){
		alert("제목을 입력하세요");
		title.focus();
		check = false;
		
	}
	
	
		if(contents==""){
		alert("내용을 입력하세요");
		contents.focus();
		check = false;
		
	}
		if(category==""){
		alert("카테고리를 선택하세요");
		category.focus();
		check = false;
	
	}
	
	if(check){$("form:first").submit();}
	
});




	$("#delete").click(function(){
		if(confirm("삭제하시겠습니까?")){
		return true;
		}else{
		return false;
		}
	});
	
	
