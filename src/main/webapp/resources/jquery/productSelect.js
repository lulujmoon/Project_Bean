/**
 * 
 */

/* 옵션이 하나일 때 설정 */
if($("#optDiv").attr("title")=='1'){
	$("#optDiv").attr("style","display:none;");
	$(".optionNum").prop("checked",true);
}


/* 장바구니 버튼 설정 */

 let re = 0;
 
 $("#btn").click(function(){
	
	if(re==0){
		let optionNum;
		let grind;
		let quantity;
		
		for(opt of $(".optionNum")){
			if($(opt).prop("checked")){
				optionNum = $(opt).val();
			}
		}
		
		if($("#selGr").attr("title")!='O'){
			grind = null;
		}else{
			for(gr of $(".grind")){
				if($(gr).prop("selected")){
					grind = $(gr).val();
				}
			}
		}
	
		for(qu of $(".quantity")){
			if($(qu).prop("selected")){
				quantity = $(qu).val();
			}
		}
		
		$.post("../cart/cartInsert", {
			optionNum:optionNum,
			grind:grind,
			quantity:quantity
		},
		function(result){
			$("#btn").val("장바구니 보러가기");
			re = 1;
		});
	}else if(re==1){
		location.href="../cart/cartList";
	}
	
		
});