/**
 * 
 */

/*상단 추가 버튼을 누르면 option 추가창이 뜨도록*/
 
$("#add").click(function(){
	$("#sample").attr("style", "display:block");
	$("#tit").text("옵션 추가");
});

const formData = new FormData();

$(".edit").click(function(){
	let count = 1;
	
	for(opt of $(this).siblings()){
		if(count!=6){
		let value = $(opt).text();
		let index = 'opt'+count; 
		let name = $("#"+index).attr("name");
		$(opt).html('<input type="text" name='+name+' value='+value+'>') ;
		count++;
		formData.append(name, value);
		}
	}
		
	$(this).attr("class", "don");
});



$(".don").click(function(){
	$.ajax({
		type: "POST",
		url: "./optionUpdate",
		data: formData,
		cache:false,
		processData:false,
		contentType:false,
		success:function(result){
			alert(result);
		}
	});
})