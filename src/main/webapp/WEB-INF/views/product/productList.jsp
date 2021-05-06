<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/productList.css">
<link rel="stylesheet" href="../resources/css/memberLogin.css">
<link rel="stylesheet" href="../resources/css/memberJoin.css">
<title>Bean Bean Coffee</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>

<!-- Portfolio Section -->
<div class="container">
	<div class="titleDiv">
		<h2 title="${productNum}" id="h2"><a href="./productList" style="color: black;">Products</a></h2>
		<h4>Your personal coffee guide</h4>
		<hr>
	</div>

	<div style="text-align: center">
		<a href="./productList?category=coffee">Coffee</a> | 
		<a href="./productList?category=brewingTool">Brewing Tool</a> | 
		<a href="./productList?category=gift">Gift</a> | 
		<a href="./productList?category=dripbag">Dripbag</a> | 
		<a href="./productList?category=coldbrew">Coldbrew</a>
	</div>
	<c:if test="${member.authority eq '1'.charAt(0)}">
		<div style="text-align: center;margin-top:7px;color:grey">상품 추가는 admin 페이지의 상품 관리에서 가능합니다.</div>
	</c:if>
<section id="portfolio">
     <div class="container">
          <div class="row">
			<c:forEach items="${list}" var="product">
				<c:if test="${member.authority!='1'.charAt(0)}">
					<c:if test="${product.options.size()!=0}">
	                	<div class="col-md-4 col-sm-6" style="overflow:hidden">
	                    <a href="./productSelect?productNum=${product.productNum}" data-toggle="modal" data-target="#select_${product.productNum}" data-whatever="${product.productNum}">
	                         <div class="portfolio-thumb" style="width:100%;height:80%;">
	                              <img src="../resources/upload/product/${product.thumbnail.fileName}" class="img-responsive" alt="Portfolio" style="width:100%;height:100%">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>${product.name}</h3>
                                             <p style="color:#FBF8EF">${product.subtitle}</p>
                                        </div>
                                   </div>
	                         </div>
	                    </a>
	              	 	</div>
              	 	</c:if>
				</c:if>
				<c:if test="${member.authority=='1'.charAt(0)}">
					<div class="col-md-4 col-sm-6" style="overflow:hidden">
                    <a href="./productSelect?productNum=${product.productNum}" data-toggle="modal" data-target="#select_${product.productNum}" data-whatever="${product.productNum}">
                         <div class="portfolio-thumb" style="width:100%;height:80%;">
                              <img src="../resources/upload/product/${product.thumbnail.fileName}" class="img-responsive" alt="Portfolio" style="width:100%;height:100%">
                              <div class="portfolio-overlay">
                                   <div class="portfolio-item">
                                        <h3>${product.name}</h3>
                                        <p style="color:#FBF8EF">${product.subtitle}</p>
                                   </div>
                              </div>
                         </div>
                    </a>
              	 	</div>
				</c:if>
			</c:forEach>
               <div class="col-md-12 col-sm-12 text-center">
                    Bean Bean, Your personal coffee guide
               </div>

          </div>
     </div>
</section>
</div>
<c:forEach items="${list}" var="product">
<!-- Modal -->
	<div class="modal fade productModal" id="select_${product.productNum}" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog modal-xl" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">${product.name}</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<div>
		      	<div class="thumbnailHere"><img src="../resources/upload/product/${product.thumbnail.fileName}" style="width:400px;height:300px"></div>
		      	<div class="preContentsHere">
			      	<div>
			      		<div class="titleAgainHere">${product.name}</div>
			      		<c:if test="${member.authority eq '1'.charAt(0)}">
				   			<div style="display:inline-block;float:right">
				   				<a href="./optionManage?productNum=${product.productNum}" class="admin-btn">옵션</a>
			    				<a href="./productUpdate?productNum=${product.productNum}" class="admin-btn">수정</a>
			    				<span class="admin-btn proDel-btn">삭제</span>
			    			</div>
		    			</c:if>
			      	</div>
			      	<div class="subtitleHere">${product.subtitle}</div>
			      	<div class="row">
			      		<div class="includesInfo">구성품</div>
			      		<div class="includesHere">
			      			<span class="includes">${product.includes}</span>
			      			<ul class="includesList"></ul>
			      		</div></div>
			      	<div class="optionsHere">
			      		<table class="optionTable">
			      			<c:if test="${product.options.size()==0}">
			      				<div style="color:red">
			      					현재 상품에 등록된 옵션이 없습니다.<br>옵션이 없으면 상품이 고객에게 노출되지 않습니다. 옵션을 추가해주세요.
			      				</div>
			      			</c:if>
			      			<c:forEach items="${product.options}" var="option">
			      							<tr>
			      					<c:choose>
			      						<c:when test="${option.stock eq 0}">
			      								<td><input type="radio" class="optionNum" name="optionNum" value="${option.optionNum}" disabled="disabled"></td>	      				
			      						</c:when>
			      						<c:otherwise>
							      				<td><input type="radio" class="optionNum" name="optionNum" id="optionNum_${option.optionNum}" value="${option.optionNum}"></td>
			      						</c:otherwise>
			      					</c:choose>
							      				<td><label for="optionNum_${option.optionNum}">${option.type}</label></td>
							      				<c:if test="${option.price == option.afterPrice}">
							      					<td><label for="optionNum_${option.optionNum}">₩${option.price}</label></td>
							      				</c:if>
							      				<c:if test="${option.price ne option.afterPrice}">
								      				<td><label for="optionNum_${option.optionNum}"><del>₩${option.price}</del>&nbsp;&nbsp;₩${option.afterPrice}</label></td>
								      			</c:if>
								      			<td><label for="optionNum_${option.optionNum}">${option.optionInfo}</label></td>
							      			</tr>	

			      			</c:forEach>
			      		</table>
			      	</div>
			      	<c:if test="${product.grinds eq 'O'}">
				      	<div class="grindsHere">
							갈아드릴까요?&nbsp;&nbsp;
							<select name="grind" class="selectpicker grinds" style="font-size:14px">
								<option>홀빈(갈지 않음)</option>
								<option>핸드드립/클레버용</option>
								<option>커피메이커용</option>
								<option>프렌치프레스용</option>
								<option>모카포트/에어로프레스용</option>
								<option>에스프레소 머신용</option>
								<option>더치/콜드브루용</option>
							</select>
						</div>
			      	</c:if>
					<div class="quantitiesHere">
						수량&nbsp;&nbsp;
						<select name="quantity" class="selectpicker quantities" data-width="65px" data-size="5" style="font-size:14px">
							<c:forEach begin="1" end="20" var="i" step="1">
								<option value="${i}" class="quantity quantityOpt">${i}개</option>
							</c:forEach>
						</select><br><br>
					</div>
			   		<div class="buttonsHere">
			   			<div class="cart-btn orders-btn">장바구니</div>
			   			<div class="order-btn orders-btn">바로결제</div>
			   		</div>
		   		</div>
	   		</div>
	   		<div class="noticeHere"><c:import url="./productNotice.jsp"></c:import></div>      
	   		<div class="contentsHere">${product.contents}</div>
	       	<div>
				<section class="item-section">
					<div class="row">
						<div class="col-sm-2 det-title">
						상세 정보
						</div>
						<div class="col-sm-10 det-contents">
							<span class="details" style="display:none">${product.details}</span>
							<ul class="detailsList"></ul>
						</div>
					</div>
				</section>
	       	</div>
	       	<div class="commonInfoHere"><c:import url="./commonInfo.jsp"></c:import></div>
		    <div class="modal-footer">
		        <div class="toTop-btn">맨 위로</div>
		    </div>
	   	 </div>
	  	</div>
	  </div>
	</div>

</c:forEach>
<c:import url="../template/footer.jsp"></c:import>

<!-- 장바구니 모달 -->
<div class="modal fade" tabindex="-1" role="dialog" id="goCart">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
 		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <p id="cartMessage">
        	<br>장바구니에 상품이 담겼습니다.<br><br>
	        <a class="cartModal-btn goCart-btn">장바구니로 가기</a><span style="color:#4d638c;font-weight:bold"> | </span>
	        <a class="cartModal-btn" data-dismiss="modal">계속 쇼핑하기</a>
        </p>
      </div>
    </div>
  </div>
</div>

<!-- <script type="text/javascript" src="../resources/jquery/productList.js"></script> -->
<script type="text/javascript">
<c:forEach items="${list}" var="product">
$('#select_${product.productNum}').on('show.bs.modal', function (event) {
	
	  let button = $(event.relatedTarget)
	  let productNum = button.data('whatever') // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	  let modal = $(this);
	  
	  <!-- 구성품 리스트 생성 -->
	  let includes = $(modal).find(".includes");
	  let inTxt = $(includes).text();
	  let includesArr = inTxt.split('~');
	  
	  inTxt = "";
	  for(inc of includesArr){
		  inTxt = inTxt + "<li>- "+inc+"</li>";
	  }
	  $(includes).text("");
	  $(".includesList").html(inTxt);
	  
	  
	  <!-- 상세정보 리스트 생성 -->
	  let details = $(modal).find(".details");
	  let deTxt = $(details).text();
	  let detailsArr = deTxt.split('~');
	 
	  deTxt = "";
	  for(de of detailsArr){
		  deTxt = deTxt+"<li>- "+de+"</li>";
	  }
	  $(details).text("");
	  $(".detailsList").html(deTxt);
	 
	  <!-- 초기 세팅 -->
	  let optNums = $(modal).find(".optionNum");
	  $(optNums[0]).prop("checked", true);
	  
	  
	  <!-- 장바구니 추가 함수 -->
	  function cartInsert(){
		  let res = false;
		  let optionNum="";
		  for(opt of $(modal).find(".optionNum")){
			  if($(opt).prop("checked")){
				  optionNum=$(opt).val(); 
			  }
		  }
	  	  let grind = "";
		  if('${product.grinds}'=="O"){
			grind = $(modal).find(".grinds option:selected").val();	
		  }
		  let quantity = $(modal).find(".quantities option:selected").val();
			  $.ajax({
				  url:"../cart/cartInsert",
				  type:"POST",
				  data:{
					  optionNum:optionNum,
					  grind:grind,
					  quantity:quantity
				  },
				  async: false,
				  success: function(result){
							if(result.trim()!=""){
								alert(result.trim());
							}else{
								res=true;								
							}
						},
				  error: function(){
					alert("등록된 옵션이 없습니다.");
				  }
			  });			
			
		  return res;
	  }
	  
	  <!-- 버튼 설정 -->
	  $(modal).find(".cart-btn").click(function(){
		let res = cartInsert();
		if(res){
			$("#goCart").modal();
		}

	  });
	  
	  $(modal).find(".order-btn").click(function(){
		  let res = cartInsert();
		  if(res){
			  setTimeout(function(){
				  location.href="../cart/cartList";		  				  
			  }, 300);
		  }
	  });
	  
	  $(".goCart-btn").click(function(){
		  location.href="../cart/cartList";
	  });
	  
	  $(modal).find(".toTop-btn").click(function(){
			$(modal).scrollTop(0);
		  });
	  
	  <!-- 삭제 -->
	  $(modal).find(".proDel-btn").click(function(){
		  let del = confirm("정말 삭제하시겠습니까?");
		  if(del){
			  $.post("./productDelete", {
				  productNum:"${product.productNum}"
			  }, function(result){
				  location.href="./productList";
			  });			  
		  }
	  })

});

$('#select_${product.productNum}').on('hidden.bs.modal', function (e) {
    $(this).find(".cart-btn").off();
    $(this).find(".order-btn").off();
});

</c:forEach>

let paraNum = $("#h2").attr("title");
if(paraNum!=""){
	$("#select_"+paraNum).modal('show');
}
</script>
</body>
</html>