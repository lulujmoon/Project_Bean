/**
 * 
 */

$("#upd").on("click",function(){
	
	//선택자
	var faq = $(this).parent().parent();
	//번호
	var num=faq.find("#num").val();
	
	var title=faq.find("#title").val();
	
	var contents=faq.find("#contents").val();
	
	var category=faq.find("#category").val();
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

$("#upd").on("click",function(){
	
	//선택자
	var faq = $(this).parent().parent();
	//번호
	var num=faq.find("#num").val();
	
	var title=faq.find("#title").val();
	
	var contents=faq.find("#contents").val();
	
	var category=faq.find("#category").val();
	
	
	$.ajax({
		type:"post",
		url:"./faqUpdate",
		data:{
			num:num,
			title:title,
			contents:contents,
			category:category
			},
		success:function(result){
			location.reload("./faqList");
			
		}
		
	});
	
		
	});
	
	$("#del").click(function(){
		if(confirm("삭제하시겠습니까?")){
		return true;
		}else{
		return false;
		}
	});
	
	
	
	
	
	
	$(".nav-link").click(function(){
	this().style.borderColor ="#dee2e6 #dee2e6 #fff"
	this().style.border = "1px solid"
	});
	




