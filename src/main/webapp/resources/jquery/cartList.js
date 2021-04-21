/**
 * 
 */

/* 분쇄도와 수량의 value를 저장한 값으로 설정해준다. */

function load(){
	for(gr of $(".grind")){
		if($(gr).val()==$(gr).parent().attr("title")){
			$(gr).prop("selected", true);
		}
	}
	
	for(qu of $(".quantity")){
		if($(qu).val()==$(qu).parent().attr("title")){
			$(qu).prop("selected", true);
		}
	}
	
	
}

/* 합계, 배송비, 총가격을 계산한다. */

function calculate(){
	if($("#totalPrice").text()>=25000){
		$("#shipping").text("0");
	}else if($("#totalPrice").text()==0){
		$("#shipping").text("0");
	}else{	
		$("#shipping").text("3000");
	}
	
	let totalPrice = parseInt($("#totalPrice").text());
	let shipping = parseInt($("#shipping").text());
	
	$("#final").text(totalPrice+shipping);
}

/* 페이지 로딩 시 실행 */

load();
calculate();


/* 분쇄도와 수량을 변경하면 ajax로 cartUpdate 메서드를 호출한다 */

$(".update").change(function(){
	let block = $(this).parent().parent();
	let grBlock=null;
	let quBlock;
	
	let itemNum = block.attr("title");
	let grind=null;
	let quantity=0;
	
	/* 해당하는 부모블럭 찾기 */
	
	for(ch of $(block).children()){
		if($(ch).attr("class")=='grinds'){
			grBlock = ch;
		}else if($(ch).attr("class")=='quantities'){
			quBlock = ch;
		}
	}

	/* grind와 quantity에 변경된 값 넣어주기 */
	
	if(grBlock!=null){
		for(gr of $(grBlock).find(".update").children()){
			if($(gr).prop("selected")){
				grind = $(gr).val();
			}	
		}	
	}
	
	for(qu of $(quBlock).find(".update").children()){
		if($(qu).prop("selected")){
			quantity = $(qu).val();
		}
	}
	
	/* post로 보내기 */
	
	$.post("./cartUpdate", {
		itemNum: itemNum,
		grind: grind,
		quantity: quantity
	}, function(result){
		location.reload();
		$("#totalPrice").text(result);
		load();
		calculate();
	});
	
});



/* X 버튼을 누르면 장바구니에서 삭제한다 */

$(".del-btn").click(function(){
	let itemNum = $(this).attr("title");
	
	$.post("./cartDelete", {
		itemNum: itemNum
	}, function(result){
		location.reload();
		$("#totalPrice").text(result);
		load();
		calculate();
	})
})
