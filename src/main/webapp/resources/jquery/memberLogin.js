/**
 * 
 */

/*

// 현재페이지 유지
function init() {
	alert(location.pathname + location.search);
	document.getElementById("path").value = location.pathname + location.search;
}



*/

// ******** login ********


let loginId = false;

function idcheck(result) {
	
}
	
$("#idL").blur(function(){
	$.get("/bean/member/idCheck?id="+$("#idL").val(), function(result){
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
	$.get("/bean/member/pwCheck?id="+$("#idL").val(), function(result){
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
	} else if(!loginPw) {
		alert("비밀번호를 확인해주세요");
		$("#pwL").focus();
	}		
		return false;
}






