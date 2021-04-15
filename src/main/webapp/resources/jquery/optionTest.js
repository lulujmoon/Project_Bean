/**
 * 
 */
 
 $("#btn").click(function(){
	let txt = $("#txt").val();
	let start = 0;
 	let check = txt.indexOf('~', start)!=-1;
 	
 	while(check){
		let end = txt.indexOf('~', start);
		let opt = txt.substring(start, end);
		$("#sel").append("<option>"+opt+"</option>");
		
		start = end+1;
		
		if(txt.indexOf('~', end+1)==-1){
			opt = txt.substring(end+1);
			$("#sel").append("<option>"+opt+"</option>");
			check=false;
		}
	}
});
