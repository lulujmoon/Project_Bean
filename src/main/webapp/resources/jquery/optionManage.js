/**
 * 
 */

/*상단 추가 버튼을 누르면 option 추가창이 뜨도록*/
 
$("#add").click(function(){
	$("#sample").attr("style", "display:block");
	$("#tit").text("옵션 추가");
});


/*옵션 수정*/

const formData = new FormData();
let pdNum = $("#h").attr("title");


$(".edit").click(function(){
	let count = 1;
	
	/* 옵션의 요소들을 input 타입으로 변경해준다. */
	for(opt of $(this).siblings()){
		if(count!=6){
		let value = $(opt).html();
		let index = 'opt'+count; 
		let name = $("#"+index).attr("name");
		$(opt).html('<input type="text" id="'+name+'" name="'+name+'" value="'+value+'">') ;
		count++;
		}
	}
	
	let opNum = $(this).attr("title");
	formData.append('optionNum', opNum);
	
	
	$(this).html('<input type="button" value="완료" class="btn btn-sm btn-secondary don" title="${option.optionNum}">');
});

/* 옵션 요소들의 input의 값을 변경하고 다시 클릭하면 form을 보낸다. */
$(".edit").on("click", ".don", (function(){
	formData.append('optionInfo', $("#optionInfo").val());
	formData.append('type', $("#type").val());
	formData.append('price', $("#price").val());
	formData.append('discountRate', $("#discountRate").val());
	formData.append('stock', $("#stock").val());
	
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
})