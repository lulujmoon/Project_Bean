/**
 * 
 */

$("#btnConfirm").click(function(){
	
	var title = document.getElementById("title")
	var contents = document.getElementById("contents")
	var category = document.getElementById("category")
	
	if(title.value==""){
		alert("제목을 입력하세요")
		title.focus()
		return false
	}
		if(contents.value==""){
		alert("내용을 입력하세요")
		contents.focus()
		return false
	}
		if(category.value==""){
		alert("카테고리를 선택하세요")
		category.focus()
		return false
	}
	
});

	$("#del").click(function(){
		if(confirm("삭제하시겠습니까?")){
		return true;
		}else{
		return false;
		}
	});
