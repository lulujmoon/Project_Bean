/**
 * 
 */

$(".upd").click(function(){
	
	let title =$("#writer").val()
	let contents=$("#contents").val()
	let category=$("#category").val()
	
	$ajax({
		type:"POST",
		data:{
		"title":title,
		"contents":contents,
		"category":category
		},
		url:"../faq/faqUpdate",
		success:function(data){
			alert(data)
		}
		
		
	});

});


