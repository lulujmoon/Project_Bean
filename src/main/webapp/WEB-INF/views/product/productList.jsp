<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/productList.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>

<!-- Portfolio Section -->
<div class="container">
<h2 style="margin:10px;text-align:center;font-family: 'Orelega One';">Products</h2>

	<div style="text-align: center;font-family: 'Orelega One';">
		<a href="./productList?category=coffee">Coffee</a> | 
		<a href="./productList?category=brewingTool">Brewing Tool</a> | 
		<a href="./productList?category=gift">Gift</a> | 
		<a href="./productList?category=dripbag">Dripbag</a> | 
		<a href="./productList?category=Coldbrew">Coldbrew</a>
	</div>
	<div class="container" style="text-align:right;"><a href="./productInsert" class="btn btn-sm btn-info">Add</a>
</div>
<section id="portfolio">
     <div class="container">
          <div class="row">
			<c:forEach items="${list}" var="product">
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
			</c:forEach>
               <div class="col-md-12 col-sm-12 text-center">
                    <h3>hello, if you interest working together. just send message <a href="#">contact page</a></h3>
               </div>

          </div>
     </div>
</section>

<c:forEach items="${list}" var="product">
<!-- Modal -->
	<div class="modal fade" id="select_${product.productNum}" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
		      	<div class="thumbnailHere"><img src="../resources/upload/product/${product.thumbnail.fileName}" style="width:100%;height:100%"></div>
		      	<div class="preContentsHere">
			      	<div>
			      		<div class="titleAgainHere">${product.name}</div>
			      	</div>
			      	<div class="subtitleHere">${product.subtitle}</div>
			      	<div class="row"><div class="includesInfo">구성품</div><div class="includesHere"></div></div>
			      	<div class="optionsHere">
			      		<table class="optionTable">
			      			<c:forEach items="${product.options}" var="option">
			      			<tr>
			      				<td><input type="radio" class="optionNum" name="optionNum" value="${option.optionNum}"><span class="optStock" style="display:none">${ption.stock}</span></td>
			      				<td><span class="optType">${option.type}</span></td>
			      				<td><span class="optPrice"><del>₩${option.price}</del>&nbsp;&nbsp;₩${option.afterPrice}</span></td>
			      				<td><span class="optInfo">${option.optionInfo}</span>
			      			</tr>
			      			</c:forEach>
			      		</table>
			      	</div>
			      	<div class="grindsHere">
						갈아드릴까요?&nbsp;&nbsp;
						<select name="grind" class="selectpicker" style="font-size:14px">
							<option class="grind grindOpt">홀빈(갈지 않음)</option>
							<option class="grind grindOpt">핸드드립/클레버용</option>
							<option class="grind grindOpt">커피메이커용</option>
							<option class="grind grindOpt">프렌치프레스용</option>
							<option class="grind grindOpt">모카포트/에어로프레스용</option>
							<option class="grind grindOpt">에스프레소 머신용</option>
							<option class="grind grindOpt">더치/콜드브루용</option>
						</select>
					</div>
					<div class="quantitiesHere">
						수량&nbsp;&nbsp;
						<select name="quantity" class="selectpicker" data-width="65px" data-size="5" style="font-size:14px">
							<c:forEach begin="1" end="20" var="i" step="1">
								<option value="${i}" class="quantity quantityOpt">${i}개</option>
							</c:forEach>
						</select><br><br>
					</div>
			   		<div class="buttonsHere">
			   			<div id="cart-btn">장바구니</div>
			   			<div id="order-btn">바로결제</div>
			   			<div id="goCart-btn">장바구니 보러가기</div>
			   			<div style="display:inline-block;float:right">
			   				<a href="./optionManage?productNum=${product.productNum}" class="btn btn-sm btn-success">옵션</a>
		    				<a href="./productUpdate?productNum=${product.productNum}" class="btn btn-sm btn-success">수정</a>
		    				<a href="./productDelete?productNum=${product.productNum}" class="btn btn-sm btn-success">삭제</a>
		    			</div>
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
							<ul class="det-ul1 detailsHere"></ul>
						</div>
					</div>
				</section>
	       	</div>
	       	<div class="commonInfoHere"><c:import url="./commonInfo.jsp"></c:import></div>
		    <div class="modal-footer">
		        <div id="toTop-btn">맨 위로</div>
		    </div>
	   	 </div>
	  	</div>
	  </div>
	</div>

</c:forEach>



<!-- <script type="text/javascript" src="../resources/jquery/productList.js"></script> -->
<script type="text/javascript">
$('#productSelect').on('show.bs.modal', function (event) {
	
	  let button = $(event.relatedTarget)
	  let productNum = button.data('whatever') // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	  let modal = $(this);
	  	  
})
</script>
</body>
</html>