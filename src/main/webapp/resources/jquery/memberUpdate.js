/**
 * 
 */



/*

$(document).ready(function(){
	$("#pw").val(pw);
})
*/


$("#delete").click(function(){
	if(!confirm("탈퇴하시겠습니까?")){
		return false;	
	}
})


$("#edit").click(function(){
	let pw = $("#pw").attr("title");
	$("#pw").val(pw);
	let pw2 = $("#pw").val();
});
/*
function check(){
	console.log($("#pw").val());
	if($("#pw").val()==null) {
		$("#pw").val(pw);
		return true;
	} else if($("#pw").val() != null) {
		return true;
	}	
}
*/