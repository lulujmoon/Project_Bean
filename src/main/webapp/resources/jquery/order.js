/**
 * 
 */


/* 결제 버튼 누르면 영역 보여주기 */
$("#orderShow-btn").click(function(){
	let id=$("#id").val();
	/* 상품이 없으면 구매 불가 */
	if($("#finalPrice").text()!=0){
		/* 비회원이면 구매 불가 */
		if(id==""){
			//모달 띄우기
			$("#login").modal();
		}else{
			$("#orderShow-btn").attr("style", "display:none");
			$("#orderDiv").slideDown(800);
		}
		
		$("#amount").text($("#finalPrice").text());		
	}else{
		alert('구매할 상품이 없습니다.');
	}
	
});


/* 우편번호 API */

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



/* 포인트 조회 및 사용 */
$("#point-btn").click(function(){
	$("#point-use").val($("#max-point").text());
	
	let amount = parseInt($("#finalPrice").text()) - parseInt($("#point-use").val());
	if(amount<0){
		amount=0;
		$("#point-use").val(parseInt($("#finalPrice").text()));
	}
	$("#amount").text(amount);
});

$("#point-use").change(function(){
	if(parseInt($(this).val())>parseInt($("#max-point").text())){
		$(this).val($("#max-point").text());
	}
	
	let amount = parseInt($("#finalPrice").text()) - parseInt($(this).val());
	if(amount<0){
		amount=0;
		$("#point-use").val(parseInt($("#finalPrice").text()));
	}
	$("#amount").text(amount);
});




/* 배송메세지 직접 입력 선택 시 */

$("#msg-sel").change(function(){
	let count = 0;
	for(opt of $(this).children()){
		if($(opt).prop("selected") && $(opt).text()=='직접 입력'){
			$("#message").removeAttr("style");
			$("#message").attr("name", "message");
			$(this).removeAttr("name");
			count=1;
		}
	}
	
	/* 직접 입력이 아니면 다시 사라지게 한다 */
	if(count==0){
		$("#message").attr("style", "display:none");
		$("#message").removeAttr("name");
		$(this).attr("name", "message");
	}
})


/************* 결제하기 **************/


/* 결제 시도 시 DB에 결제 전 상태로 저장 */
$("#order-btn").click(function(){
	let id = $("#id").val();
	let amount = parseInt($("#amount").text());
	let payMethod = 'card';
	let buyer_name = $("#buyerName").val();
	let buyer_tel = $("#buyerTel").val();
	let buyer_postcode = $("#postcode").val();
	let buyer_addr = $("#addr").val();
	let buyer_addr2 = $("#addr2").val();
	let message = $("#message").val();
	if(message==""){
		for(msg of $(".msg-opt")){
			if($(msg).prop("selected")){
				message = $(msg).val();				
			}			
		}
	}
	let usePoint = $("#point-use").val();
	if(usePoint==""){
		usePoint = 0;
	}

	let merchant_uid="";
	let name="";

	let save_addr = $("#save-addr").prop("checked");

	if(payMethod==""||buyer_name==""||buyer_tel==""||buyer_postcode==""||buyer_addr==""||buyer_addr2==""){
		alert("배송 정보를 입력하세요.");
	}else{
		$.ajax({
			url: "../order/orderInsert",
			type: 'POST',
			data: {			
			 id:id,
			 payMethod:payMethod,
			 buyerName:buyer_name,
			 buyerTel:buyer_tel,
			 buyerPostcode:buyer_postcode,
			 buyerAddr:buyer_addr,
			 buyerAddr2:buyer_addr2,
			 message:message,
			 save_addr:save_addr
			},
			async: false,
			success: function(result){
				resultArr = result.trim().split('-');
				if(resultArr[1]!=null){
					merchant_uid = resultArr[0];
					name = resultArr[1];				
				}else{
					alert(resultArr[0].trim());
					location.reload();
				}
			}
		});
		
		
		if(amount!=0&&name!=null){
			
			var IMP = window.IMP;	
			IMP.init('imp36227628');
			IMP.request_pay({
			    pg : 'inicis',
			    pay_method : payMethod,
			    merchant_uid : merchant_uid,
			    name : name,
			    amount : amount,
			    buyer_email : '',
			    buyer_name : buyer_name,
			    buyer_tel : buyer_tel,
			    buyer_addr : buyer_addr,
			    buyer_postcode : buyer_postcode,
			    m_redirect_url : 'http://localhost/bean/'
			}, function(rsp) {
			    if ( rsp.success ) {
			        $.ajax({
						url:"../order/orderCheck",
						type:"POST",
						data: {
							orderUid: merchant_uid,
							imp_uid: rsp.imp_uid,
							usePoint: usePoint
						},
						success: function(result){
							alert(result.trim());
							location.href="../member/memberOrderDetail?orderUid="+merchant_uid;
						}
					})
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
		
			        //사용자가 결제를 취소하였습니다면 결제취소로 payState 바꾸는 메서드 실행
			        $.ajax({
						url:"../order/orderCancelled",
						type: "POST",
						data: {
							orderUid: merchant_uid
						},
						success: function(){
							alert(msg);
							location.href="./cartList";
						}
					})
		   		}
			});
		}else{
			$.post("../order/orderbyPoint", {
				orderUid: merchant_uid,
				usePoint: usePoint
			}, function(result){
				alert(result.trim());
				location.href="../member/memberOrderDetail?orderUid="+merchant_uid;
			})
		}
		
	}
	
})