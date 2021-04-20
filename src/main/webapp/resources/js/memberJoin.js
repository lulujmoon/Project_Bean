/**
 * 
 */

let idCheckResult = false; // id check 결과
let pwCheckResult = false; // pw check 결과
let pwEqualResult = false; // pw equal 결과

let etcResult=true		   // name, email, phone 결과

// Id 중복 확인
/*$("#join-id").blur(function(){
 
	$.get("./memberCheckId?id="+$("#join-id").val(), function(result){
		result = result.trim();
		let str ="사용가능한 ID 입니다";
		
		if(result=='0'){
			str ="중복 ID 입니다";
		}
		
		$("#idCheckResult").html(str);
	});
});
*/

// ******** 이메일 유효성 검사 ********
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
    str = "사용할 수 있는 이메일입니다";
	c = "r2";
    $("#idCheckResult").html(str);
	$("#idCheckResult").attr("class", c);	
}  

});

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
	
	let pwResult = document.getElementById("pwResult");
	pwResult.innerHTML=str;
	pwResult.setAttribute("class", c);
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

function test1() {
	console.log(pwCheckResult);
	console.log(pwEqualResult);
	console.log(etcResult);
	console.log(radioResult);
	
}



// ******** 필수항목 ********


let radioResult=false;
let etc = document.getElementsByClassName("etc");

$("#join-bt").click(function(){
		
		let radio2 = $("#womanRadio").prop("checked");
		let radio1 = $("#manRadio").prop("checked");
	
		if(radio1 || radio2) {
			radioResult = true;
/*			alert(radio1);
			alert(radio2);*/
		}
/*		alert(radioResult);*/
	
	for(let e of etc) {
		if(e.value == "") {
			etcResult=false;
			break;
		}
	}

	

	if(pwCheckResult && pwEqualResult && etcResult && radioResult) {
		let frm = document.getElementById("frm");
		frm.submit();
	}else {
		alert("필수 항목을 입력하세요");
	}


	test1();
});

