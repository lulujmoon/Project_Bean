/**
 * 
 */

idCheck=false;

$("#id").blur(function(){
	$.get("./member/memberIdCheck?id="+$("#id").val(), function(result){
		result = result.trim();
		
		let id = $("#id").val();
		console.log(result); /* 1: 없는아이디 */
		console.log(id) 
		
		if(result=='0'){
			idCheck=true;
		};
		console.log(idCheck);	
	});

});


nameCheck = false;

$("#name").blur(function(){
	$.get("./nameCheck?id="+$("#id").val(), function(result){
		result=result.trim();
		let name = $("#name").val();
		console.log(result);
		console.log(name) 

		if(name === result) {
			nameCheck = true;
		};
		console.log(nameCheck);	
	});
});

/*
let name = document.getElementById("name");
name.addEventListener("change", function(){
	name.value="";
});
*/


function submitCheck(){
	
	if(idCheck && nameCheck) {
		return true;
	} 
	
	
	if(!idCheck) {
		alert("일치하는 이메일이 없습니다");
		$("#id").focus();
	}
	
	if(!nameCheck) {
		alert("이름이 일치하지 않습니다");
		$("#name").focus();
	}
		
	return false;

}