/**
 * 
 */

$("#btnPass").on("click",function(){
	
	var QP = $(this).parent().parent();
	var pw = QP.find("#pw").val();
	
	$ajax({
		type:"get",
		url:"./qnaSelect"
		
		
		
	});
});