/**
 * 
 */

/* 할인가 계산 함수 */
function calAfterPrice(price, discountRate){
	let afterPrice = Math.floor(price*(1-discountRate));
	return afterPrice;
}


/* 옵션 추가 */
/*상단 추가 버튼을 누르면 option 추가창이 뜨도록*/
$("#add").click(function(){
	$("#sample").attr("style", "display:block");
	$("#tit").text("옵션 추가");
});

/* 숫자만 입력하게 */
function onlyNum(){
	if(event.keyCode<48||event.keyCode>57){
		event.returnValue = false;
	}
}

/* 할인가 계산 적용 */
$("#opt4, #opt5").change(function(){
	let price = parseInt($("#opt4").val());
	let discountRate = parseFloat($("#opt5").val());
	let afterPrice = calAfterPrice(price, discountRate);
	$("#opt6").val(afterPrice);
})


/*옵션 수정*/

const formData = new FormData();
let pdNum = $("#h").attr("title");


$(".edit").click(function(){
	let count = 1;
	
	/* 옵션의 요소들을 input 타입으로 변경해준다. */
	for(opt of $(this).siblings()){
		if(count!=7){
			let value = $(opt).html();
			let index = 'opt'+count; 
			let name = $("#"+index).attr("name");
			if(count==6){
				$(opt).html('<input type="text" id="'+name+''+'" name="'+name+'" value="'+value+'" style="width:80%" readonly="readonly">') ;			
			}else if(count<3){
				$(opt).html('<input type="text" id="'+name+'" name="'+name+'" value="'+value+'" style="width:80%">');
			}else{
				$(opt).html('<input type="text" id="'+name+'" name="'+name+'" value="'+value+'" style="width:80%" onkeypress="onlyNum()">');
			}		
			count++;
		}
	}

	let opNum = $(this).attr("title");
	formData.append('optionNum', opNum);
	
	$(this).html('<input type="button" value="완료" class="btn btn-sm btn-secondary don" title="${option.optionNum}">');
	
	/* 옵션 수정 시 가격이나 할인율이 변동하면 할인가를 새로 계산 */
	$("#price, #discountRate").change(function(){
		let price = parseInt($("#price").val());
		let discountRate = parseFloat($("#discountRate").val());
		let afterPrice = calAfterPrice(price, discountRate);
		$("#afterPrice").val(afterPrice);
	});
});




/* 옵션 요소들의 input의 값을 변경하고 다시 클릭하면 form을 보낸다. */
$(".edit").on("click", ".don", (function(){
	formData.append('optionInfo', $("#optionInfo").val());
	formData.append('type', $("#type").val());
	formData.append('stock', $("#stock").val());
	formData.append('price', $("#price").val());
	formData.append('discountRate', $("#discountRate").val());
	formData.append('afterPrice', $("#afterPrice").val());
	
		$.ajax({
		type: "POST",
		url: "./optionUpdate",
		data: formData,
		cache:false,
		processData:false,
		contentType:false,
		success:function(result){
			location.reload();
			}
		})
	})
);


/* 옵션 삭제 */
$(".del").click(function(){
	let opNum = $(this).attr("title");
	$.post("./optionDelete", {optionNum:opNum}, function(result){
		location.reload();
	})
});

/* 제목 누르면 모달 창으로 돌아가게 */
$("#back").click(function(){
	let conf;
	if($("#warning").attr("title")=='0'){
		conf = confirm("옵션을 등록하지 않으면 해당 상품이 고객에게 노출되지 않습니다. 옵션을 등록하지 않고 돌아가겠습니까?");
		if(conf){
			let productNum = $(this).attr("title");
			location.href = "./productList?productNum="+productNum;
		}
	}else{
		let productNum = $(this).attr("title");
		location.href = "./productList?productNum="+productNum;		
	}

})