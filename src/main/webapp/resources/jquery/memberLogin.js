/**
 * 
 */





// ******** login ********


let loginId = false;

/*$("#idL").blur(function(){
	
	let id = $("#idL").val();
	
	$.ajax({
		url: "/.member/idcheck",
		type: "get",
		data: {id:id},
		success: function(result){
			result = result.trim();
			if(id!=result) {
				console.log("존재하지 않는 아이디");
			} else{
				loginId = true;
			}
			
		}
			});

	
	});*/
	
	
function idcheck(result) {
	
}
	
$("#idL").blur(function(){
	$.get("./member/idCheck?id="+$("#idL").val(), function(result){
		result=result.trim();
		
		let id = $("#idL").val();
		console.log(result);
		console.log(id);
		
		if($("#idL").val() == result){
		//	$("#idLResult").html("");				
			loginId = true;
		}
		
		console.log("id : " + loginId);
		
		});

	});

let loginPw = false;

$("#pwL").blur(function(){
	$.get("./member/pwCheck?id="+$("#idL").val(), function(result){
		result=result.trim();
//		console.log(result);	
//		console.log($("#pwL").val());
		if($("#pwL").val() == result) {
			loginPw = true;
		}
//		console.log("비밀번호가 일치하지 않습니다")	
	});
//	console.log("pw : " + loginPw);
	
});




function loginCheck() {
	
	if(loginId && loginPw) {
		return true;
	}
	
	if(!loginId) {
		alert("입력하신 아이디가 존재하지 않거나 사용할 수 없는 아이디입니다.");
		$("#IdL").focus();
	}
	
	if(!loginPw) {
		alert("비밀번호를 확인해주세요");
		$("#pwL").focus();
	}		
		return false;
}
