/**
 * 
 */

let idCheckResult = false;	   // id 유효성 결과
let emailCheckResult = false;  //id 중복확인 결과
let pwCheckResult = false; 	   // pw check 결과
let pwEqualResult = false; 	   // pw equal 결과
let radioResult=false; 		   // 성별
let nickResult=false; 		   // 닉네임 중복확인

// ******* nickname 중복 ********
$("#join-nickname").blur(function(){
	
	$.get("/bean/member/nickCheck?nickname="+$(this).val(), function(result){
		result = result.trim();
		
		if(result=='0'){
			let str = "이미 사용중입니다. 다른 닉네임을 입력해주세요.";
			let c = "r1"
			$("#nickResult").html(str);
			$("#nickResult").attr("class", c);
		} else {
			str = "사용 가능한 닉네임입니다";
			nickResult=true;
		}
		    $("#nickResult").html(str);
			$("#nickResult").attr("class", c);
	})
})





// ******** ID (email) ********
// 이메일 유효성 검사

$("#join-id").blur(function(){
let email = $("#join-id").val();
let regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   
  
if(regex.test(email) === false) {  
	let str = "잘못된 이메일 형식입니다.";
	let c = "r1" 
		
	$("#idCheckResult").html(str);
	$("#idCheckResult").attr("class", c);
    return false; 
} else {  
    str = "";
	c = "r2";
	emailCheckResult = true;
}  
    $("#idCheckResult").html(str);
	$("#idCheckResult").attr("class", c);
});


// id 중복확인

$("#emailCheck").click(function(){
	
	if(emailCheckResult) {
	
		$.get("/bean/member/memberIdCheck?id="+$("#join-id").val(), function(result){
			result = result.trim();
			
			if(result=='0'){
				alert("이미 가입된 이메일입니다");
			} else {
				alert("사용가능한 아이디 입니다");			
				idCheckResult=true;
			}
		})
	
	} else {
		alert("이메일 형식을 확인해주세요");
	}
})



// ******** password ********
	let pw = document.getElementById("join-pw");
	let pw2 = document.getElementById("join-pw2");
	
// 글자수
$("#join-pw").blur(function(){
	pwCheckResult = false;
	let str = "6글자 미만입니다";
	let c = "r1"
	if(pw.value.length>5) {
		str = "";
		pwCheckResult= true;
	}
	
    $("#pwResult").html(str);
	$("#pwResult").attr("class", c);
});

// pw equal
pw2.addEventListener("blur", function(){
	let pw2Result = document.getElementById("pw2Result");
	if(pw.value != pw2.value){
		let str = "두 비밀번호가 다릅니다. 다시 확인해주세요.";
		let c = "r1"
		pw2Result.innerHTML=str;
		pw2Result.setAttribute("class", c);
		pw2.value="";
	}else {
		str = "";
		pw2Result.innerHTML=str;
		pwEqualResult=true;
	}
});

pw.addEventListener("change", function(){
	pw2.value="";
});


// ***** test *****
function test1() {
	console.log(pwCheckResult);
	console.log(pwEqualResult);
	console.log(etcResult);
	console.log(radioResult);
}







// ******** submit ********
function submitCheck() {
		let radio2 = $("#womanRadio").prop("checked");
		let radio1 = $("#manRadio").prop("checked");
	
		if(radio1 || radio2) {
			radioResult = true;
		}

	if(emailCheckResult && pwCheckResult && pwEqualResult && idCheckResult && radioResult) {
		return true;
	} 
	
	if(!idCheckResult) {
		alert("이메일 중복확인을 해주세요!");
		$("#emailCheck").focus();
	}
	
	if(!radioResult) {
		alert("필수항목을 입력하세요");
	}
	
	if(!emailCheckResult) {
		alert("잘못된 이메일 형식입니다");
		$("#join-id").focus();
	}
	
	return false;
	
	


}

