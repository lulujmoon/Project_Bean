/**
 * 
 */

$("#wri").on("click",function(){
	
	//선택자
	var faq = $(this).parent().parent();
	
	var writer=faq.find("#writer").val();

	var title=faq.find("#title").val();
	
	var contents=faq.find("#contents").val();
	
	var category=faq.find("#category").val();
	
	
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
	

	