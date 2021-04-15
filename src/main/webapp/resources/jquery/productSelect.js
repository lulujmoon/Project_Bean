/**
 * 
 */
	
	let txt = "<c:out value='${dto}'/>";
	alert(txt);
	txt = txt.val();
	alert(txt);
	let start = 0;
 	let check = txt.indexOf('/', start)!=-1;
 	
 	while(check){
		let end = txt.indexOf('/', start);
		let opt = txt.substring(start, end);
		$("#inc").append("<td>"+opt+"</td>");
		
		start = end+1;
		
		if(txt.indexOf('/', end+1)==-1){
			opt = txt.substring(end+1);
			$("#inc").append("<td>"+opt+"</td>");
			check=false;
		}
	}
