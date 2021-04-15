/**
 * 
 */


let pw = document.getElementById("pw");
let pw2 = document.getElementById("pw2");

// ID Check -----------------

function valiFormEmail(obj) {
	if(validEmail == false ){
		alert("이메일 형식에 맞춰 적어주세요.");
		obj.value='';
		obj.focus();
		return false;
	}
}


const input_email = document.getElementById('emailchange');

input_email.addEventListener('change', updateValue);
function updateValue(e) {
	valiFormEmail(e.target);
}


function validEmail(obj) {
	let pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	return (obj.value.match(pattern) != null);
}

function chkEmail(str) {
    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    if (regExp.test(str)) return true;
    else return false;
}


$("#id").blur(function(){
	let message = "이메일 형식에 맞춰 적어주세요.";
	let c1 = false;

})




// PW EQUAL CHECK **********************************
pw2.addEventListener("blur", function(){
	if(pw.value != pw2.value){
		pw2.value="";
	}else {
		pwEqualResult=true;
	}
});


$("#btn").click(function(){
		alert("두 비밀번호가 다릅니다. 다시 확인해 주세요.")
});

pw.addEventListener("change", function(){
	pw2.value="";
});


// **** PW CHECK *********************************

pw.addEventListener("blur", function(){
	pwCheckResult=false;
	let message = "6글자 미만입니다";
	let c = "r1";
	if(pw.value.length>5){
		message = "6글자 이상입니다"
		c= "r2";
		pwCheckResult=true;
	}
	
	let pwResult = document.getElementById("pwResult");
	pwResult.innerHTML=message;
	pwResult.setAttribute("class", c);
	
});
