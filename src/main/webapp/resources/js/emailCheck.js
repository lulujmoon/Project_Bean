
$("#check").click(function(){
if (!$("input:checked[id='checkbox']").is(":checked"))
{ 
	alert("약관에 동의하세요"); $("#checkbox").focus();

	return false;

	}
	

});