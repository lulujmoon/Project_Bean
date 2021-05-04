/**
 * 
 */

let id = $("#memberlist").attr("title")
getList();

$("#memberlist").on("click", "#getlist", function(){
	
	$.ajax({
		type: "GET",
		url: "../member/memberList",
		data: {dto},
		success: function(data){
			alert(data);
		}
	});
});

function getList(){
$.get("../member/memberList", function(data){
	/*consol.log(data);*/
	$("#memberlist").html(data);

});
}

