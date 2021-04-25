/**
 * 
 */


// gender setting
$(document).ready(function(){
if($("#radioResult").val()=='2') {
	$("#inlineRadio1").prop("checked","checked");
} else {
	$("#inlineRadio2").prop("checked","checked");
}
})


//탈퇴하기 confirm
$("#delete").click(function(){
	if(!confirm("탈퇴하시겠습니까?")){
		return false;	
	}
})


// 현재 비밀번호 확인
let editPw = false;
$("#pw").blur(function(){
	$.get("./member/pwCheck?id="+$("#id").val(), function(result){
		result=result.trim();
//		console.log(result);	
//		console.log($("#pw").val());
		if($("#pw").val() == result) {
			$("#pwResult").html("");
			editPw = true;
		} else {
			$("#pwResult").html("비밀번호가 일치하지 않습니다.");
			$("#pwResult").attr("class", "r1");
		}

	});
//	console.log("pw : " + loginPw);
	
});




//비밀번호를 입력하지 않으면 원래 비밀번호로 DB저장
$("#edit").click(function(){
	let password = $("#pw").val();
	
	if(password=="") {
	let pw = $("#pw").attr("title");
	$("#pw").val(pw);
	//	let pw2 = $("#pw").val();
	
	//	alert(pw2);
	} else if($("#pw1").val()!=""){
		let newpw = $("#pw1").val();
		$("#pw").val(newpw);
		
	//	let result = $("#pw").val();
	//	alert(result);		
		
	}	
});


//새로운 비밀번호 길이
$("#pw1").blur(function(){
	pwCheckResult = false;

	if(pw1.value.length>5) {
	$("#pw1Result").html("");
		pwCheckResult= true;
	} else {
	
	$("#pw1Result").html("6글자 미만입니다.");
	$("#pw1Result").attr("class", "r1");
	}
//	console.log($("#pw1").val());
});


// new pw equal
pw2.addEventListener("blur", function(){
	let pw2Result = document.getElementById("pw2Result");
	if(pw1.value != pw2.value){
//			console.log($("#pw2").val());
			
		$("#pw2Result").html("두 비밀번호가 다릅니다. 다시 확인해주세요");
		$("#pw2Result").attr("class","r1");
		let str = "두 비밀번호가 다릅니다. 다시 확인해주세요.";
		pw2.value="";
	}else {
//			console.log($("#pw2").val());
		$("#pw2Result").html("");
		pwEqualResult=true;
		
		
	}
});

pw1.addEventListener("change", function(){
	pw2.value="";
});


function check(){
	if(editPw && pwCheckResult && pwEqualResult) {
		return true;
	}
	
	let pw = $("#pw").val();
	if(!editPw && pw!="") {
		$("#pw").focus();
	}

	if(!pwCheckResult) {
		$("#pw1").focus();
	}
	
	if(!pwEqualResult) {
		$("#pw2").focus();
	}

	return false;

}
