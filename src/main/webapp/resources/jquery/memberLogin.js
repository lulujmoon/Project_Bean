/**
 * 
 */

// ******** login ********


//ID DB확인
let loginId = false;
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






//Password DB확인
let loginPw = false;

$("#pwL").keyup(function(){
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


//enter키 submit방지
document.addEventListener('keydown', function(event) {
  if (event.keyCode === 13) {
    event.preventDefault();
  };
}, true);



//submit 조건 확인
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



/*


function loginValidation(){	
	let id = $("#idL").val();
	let pw = $("#pwL").val();
	
	if(!id){
		alert("아이디를 입력하세요.");
		$("#idL").focus();
		return false;
	}else if(!pw){
		alert("비밀번호를 입력하세요.");
		$("#pwL").focus();
		return false;
	}else {
		login(id,pw);
	}
	
}

function login(id,pw){

	
	$.ajax({
		url : "/bean/member/memberLogin",
		type : 'POST',
		data : { id : id, 
				pw : pw	
		},
		success:function(data){
			if(data == 2){
				alert("아이디 혹은 비밀번호가 맞지 않습니다.");
				return false;
			}else if(data == 3){
		
				location.href= "/bean";
				console.log(id+"님 환영합니다");
			}
		},
		error: alert("에러")
	})
	
}

function enterKeyCheck(){
	
 if(event.keyCode == 13) {
	 loginValidation();
	 }
}



// ******** id 기억하기 ********

$(document).ready(function(){
	
	// 저장된 쿠키값 가져와서 id칸에 넣어줌
	let key = getCookie("key");
	$("#idL").val(key);
	
	if($("#idL").val()!=""){	// 전에 id 저장해서 처음 페이지로딩 시, 입력 칸에 저장된 id가 표시된 상태라면
		$("#idSaveCheck").attr("checked", true);	// id 저장하기를 체크상태로 두기
	}
	
	$("#idSaveCheck").change(function(){	// 체크박스의 변화가 있다면
		if($("#idSaveCheck").is(":checked")){	// id 저장하기 체크했을 때,
			setCookie("key", $("#idL").val(), 7);	// 7일 동안 쿠키 보관
			console.log(key);
		} else {	// id 저장하기 체크 해제 시 
			deleteCookie("key");
		}
	});
	
	// id 저장하기를 체크한 상태에서 id를 입력하는 경우, 이럴 때도 쿠키 저장
	$("#idL").keyup(function(){		// id 입력칸에 id를 입력할 때,
		if($("#idSaveCheck").is(":checked")){	// id 저장하기 체크한 상태라면
			setCookie("key", $("#idL").val(),7);	// 7일 동안 쿠키 보관
		}
		
	});
		
});


function setCookie(cookieName, value, exdays) {
	let exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	let cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue;
}


function deleteCookie(cookieName){
	let expireDate = new Date();
	expireDate.setDate(exprieDate.getDate() - 1);
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

function getCookie(cookieName) {
	cookieName = cookieName + '=';
	let cookieData = document.cookie;
	let start = cookieData.indexOf(cookieName);
	let cookieValue = '';
	if(start != -1) {
		start += cookieName.length;
		let end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);		
	}
	return unescape(cookieValue);
	
}


*/





