/**
 * 
 */

$("#submit").click(function(){
 var pw = $("#pw").val();
 var num = pw.search(/[0-9]/g);

	 
if(isNaN(pw)||pw==""){
	alert("6자리 숫자로 입력하세요");
	return false;
}
	 
/*	if(pw.length!=6){

  alert("6자리 숫자로 입력하세요");
  return false;
 }else if(pw.search(/\s/) != -1){
  alert("비밀번호는 공백 없이 입력해주세요.");
  return false;
 }else if(num != 6 ){
  alert("6자리 숫자로 입력하세요");
  return false;
 }else {
	console.log("통과"); 
    return true;
 }
*/


});