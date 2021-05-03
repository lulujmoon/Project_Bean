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



//우편번호 api
$("#popup").click(function(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("addr").value = extraAddr;
            
            } else {
                document.getElementById("addr").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("addr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr").focus();
        }
    }).open();
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
