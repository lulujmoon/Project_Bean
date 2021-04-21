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

  let optionsSize = $(productDiv).find('.optionDiv').text();
  if(optionsSize!=""){
	  for(opt of $(productDiv).find('.optionDiv')){
		options = options + '<input type="radio" class="optionNum" name="optionNum" value="'+$(opt).find('.optionNum').text()+'"> ';
		options = options + $(opt).find('.type').text();
		options = options + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;₩'+$(opt).find('.price').text();
		options = options + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+$(opt).find('.optionInfo').text()+'<br>';
	  }	
  }else{
	options = '<p style="color:red">현재 상품에 등록된 옵션이 없습니다.<br>옵션이 없으면 구매를 진행할 수 없습니다. 옵션을 추가해주세요.</p>';
  }
  
  /* grinds 여부에 따라 보여주기 */
  if(grinds=='X'){
	modal.find('.grindsHere').html('<br><br>');
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
  
  /* 장바구니 버튼 */
  let count = 0;
  
  $("#cart-btn").click(function(){
	if(count==0){
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
			$("#cart-btn").text("장바구니 보러가기");
			count=1;
		});
	}else if(count==1){
		location.href="../cart/cartList";
	}
  });
  
});
/*모달 끝 */