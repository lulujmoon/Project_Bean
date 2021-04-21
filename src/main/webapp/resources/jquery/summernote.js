/**
 * 
 */

/*summer note 실행*/

$('#contents').summernote({
   placeholder: '상품 정보',
   tabsize: 2,
   height: 500,
   callbacks:
   {
	onImageUpload : function(files){
		summerUpload(files);
	}, 
	onMediaDelete: function(files){
		summerDelete(files);
	}
 	}
 });
  
/*이미지 업로드*/
function summerUpload(files){
	const formData = new FormData();
	formData.append('file', files[0]);
	let fileName = "";
	
	$.ajax({
		type: "POST",
		url: "./summerFileUpload",
		data: formData,
		enctype: "multipart/form-data",
		cache: false,
		processData: false,
		contentType: false,
		success: function(result){
			fileName = result.trim();
			$("#contents").summernote('insertImage', fileName);
		}
	});
};

function summerDelete(files){
	let fileName = $(files[0]).attr("src");
	fileName = fileName.substring(fileName.lastIndexOf('/')+1);
	
	$.post("./summerFileDelete", {fileName:fileName}, function(result){
		console.log(result);
	})
}