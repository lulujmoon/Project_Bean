/**
 * 
 */

/* 모달 설정 */
 $('#productSelect').on('show.bs.modal', function (event) {

  let button = $(event.relatedTarget)
  let productNum = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  let modal = $(this);
  
  /* 상품번호가 일치하는 데이터 영역 찾기 */
  let productDiv;
  for(num of $(".productDiv")){
	if($(num).attr("title")==productNum){	
		productDiv= $(num);
	}
  }
  
  /* 프로덕트 불러오기 */
  let name = $(productDiv).find('.name').html();
  let category = $(productDiv).find('.category').html();
  let thumbnail = $(productDiv).find('.fileName').html();
  thumbnail = '<img alt="thumbnail" src="../resources/upload/product/'+thumbnail+'" style="width:100%;height:100%">';
  let subtitle = $(productDiv).find('.subtitle').html();
  let includes = $(productDiv).find('.includes').html();
  let contents = $(productDiv).find('.contents').html();
  let details = $(productDiv).find('.details').html();
  let cartInfo = $(productDiv).find('.cartInfo').html();
  let grinds = $(productDiv).find('.grinds').text();
  
  includes = '<ul><li>'+includes.replace(/~/g,'</li><li>')+'</li></ul>';
  details = '<li class="det-li">'+details.replace(/~/g,'</li><li class="det-li">')+'</li></ul>';
  
  /* 옵션 불러오기 */
  let options = "";

  let optionsSize = $(productDiv).find('.optionsSize').text();
  if(optionsSize>1){
		options = '<table class="optionTable">';
	  for(opt of $(productDiv).find('.optionDiv')){
		options = options + '<tr><td><input type="radio" class="optionNum" name="optionNum" value="'+$(opt).find('.optionNum').text()+'"></td>';
		options = options + '<td><span class="optType">'+$(opt).find('.type').text()+'</span></td>';
		options = options + '<td><span class="optPrice">₩'+''+$(opt).find('.price').text()+'</span></td>';
		options = options + '<td class="optInfo">'+$(opt).find('.optionInfo').text()+'</td></tr>';
	  }	
	  	options = options + '</table>';
  }else if(optionsSize==1){
	let optionDiv = $(productDiv).find('.optionDiv');
	options = '<div style="display:none"><input type="text" name="optionNum" value="'+$(optionDiv).find('.optionNum').text()+'"></div>';
  }else if(optionsSize==0){
	options = '<p style="color:red">현재 상품에 등록된 옵션이 없습니다.<br>옵션이 없으면 구매를 진행할 수 없습니다. 옵션을 추가해주세요.</p>';
  }
  
  /* grinds 여부에 따라 보여주기 */
  if(grinds=='X'){
	modal.find('.grindsHere').attr("style","display:none");
  }else if(grinds=='O'){
	modal.find('.grindsHere').attr("style","");
  }
  
  /* 모달에 넣기 */
  modal.find('.modal-title').text(name);
  modal.find('.thumbnailHere').html(thumbnail);
  modal.find('.titleHere').text(name);
  modal.find('.titleAgainHere').text(name);
  modal.find('.subtitleHere').text(subtitle);
  modal.find('.includesHere').html(includes);
  modal.find('.optionsHere').html(options);
  modal.find('.contentsHere').html(contents);
  modal.find('.detailsHere').html(details);
  
  
  /* 수정, 삭제, 옵션관리 버튼 설정 */
  $("#edit").click(function(){
	location.href="./productUpdate?productNum="+productNum;
  });
  
  $("#delete").click(function(){
	location.href="./productDelete?productNum="+productNum;
  });

  $("#optManage").click(function(){
	location.href="./optionManage?productNum="+productNum;
  });
  
  
  /* 맨위로 버튼 */
  $("#toTop-btn").click(function(){
	$(".modal").scrollTop(0);
  });
  
  /* 장바구니 버튼 */  
  $("#goCart-btn").attr("style","display:none");
 
  $("#cart-btn").click(function(){

		let optionNum;
		let grind;
		let quantity;
		
		for(opt of $(".optionNum")){
			if($(opt).prop("checked")){
				optionNum = $(opt).val();
			}
		}
		
		if(grinds=='X'){
			grind=null;
		}else{
			for(gr of $(".grind")){
				if($(gr).prop("selected")){
					grind = $(gr).val();
				}
			}
		}
		
		for(qu of $(".quantity")){
			if($(qu).prop("selected")){
				quantity = $(qu).val();
			}
		}
		
		$.post("../cart/cartInsert", {
			optionNum:optionNum,
			grind:grind,
			quantity:quantity
		}, function(result){
			$("#goCart-btn").slideDown(800);
		});
	});
  

  /* 장바구니 보러가기 버튼 */
  $("#goCart-btn").click(function(){
	location.href="../cart/cartList";
  });
  
  /* 구매하기 버튼 */
    $("#order-btn").click(function(){

		let optionNum;
		let grind;
		let quantity;
		
		for(opt of $(".optionNum")){
			if($(opt).prop("checked")){
				optionNum = $(opt).val();
			}
		}
		
		if(grinds=='X'){
			grind=null;
		}else{
			for(gr of $(".grind")){
				if($(gr).prop("selected")){
					grind = $(gr).val();
				}
			}
		}
		
		for(qu of $(".quantity")){
			if($(qu).prop("selected")){
				quantity = $(qu).val();
			}
		}
		
		$.post("../cart/cartInsert", {
			optionNum:optionNum,
			grind:grind,
			quantity:quantity
		}, function(result){
			location.href="../cart/cartList";
		});
	});
  	
});
/*모달 끝 */
