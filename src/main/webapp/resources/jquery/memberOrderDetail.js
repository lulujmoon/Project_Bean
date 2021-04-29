/**
 * 
 */
 
 /* 주문 취소 */
 let shippingState = $("#shippingState").text();
 if(shippingState!='배송전'){
	$("#cancel-btn").attr("style", "display:none");
}
 
 $("#cancel-btn").click(function(){
	let cancel = confirm("정말 취소하시겠습니까?");
	if(cancel){
		let imp_uid = $(this).val();
		$.post("../order/orderCancel", {
			impUid:imp_uid
		}, function(){
			alert("주문이 취소되었습니다.");
			location.reload();
		})	
	}
	
})