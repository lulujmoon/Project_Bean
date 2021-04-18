/**
 * 
 */

$(".upd").on("click",function(){
	
	//선택자
	var faq = $(this).parent().parent();
	//번호
	var num=faq.find("#num").val();
	
	var title=faq.find("#title").val();
	
	var contents=faq.find("#contents").val();
	
	var category=faq.find("#category").val();
	
	
	$.ajax({
		type:"put",
		url:"../faqUpdate"+faqNum,
		data:{
			title:title,
			contents:contents,
			category:category
			},
		success:function(result){
			console.log("result:"+result);
		}
		
	});
	
		
	});
	



