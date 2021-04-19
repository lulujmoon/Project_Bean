/**
 * 
 */

$(".wri").on("click",function(){
	
//선택자
	var qna = $(this).parent().parent();
	
	var writer=qna.find("#writer").val();
	
	var title=qna.find("#title").val();
	
	var contents=qna.find("#contents").val();
	
	var category=qna.find("#category").val();
	
	
	$.ajax({
		type:"post",
		url:"./faqInsert",
		data:{
			writer:writer,
			title:title,
			contents:contents,
			category:category
			},
		success:function(result){
			location.reload("./faqList");
			
		}
		
	});
	
	
	});