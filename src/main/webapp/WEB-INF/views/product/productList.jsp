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
<!-- Portfolio Section -->
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<h2 style="margin:10px;text-align:center;">Products</h2>

	<div style="text-align: center">
		<a href="./productList?category=coffee" style="margin-right: 90px;">Coffee</a> | 
		<a href="./productList?category=brewingTool">Brewing Tool</a> | 
		<a href="./productList?category=gift">Gift</a> | 
		<a href="./productList?category=dripbag">Dripbag</a> | 
		<a href="./productList?category=Coldbrew">Coldbrew</a>
	</div>

</div>
<section id="portfolio">
     <div class="container">
          <div class="row">
			<c:forEach items="${list}" var="product">
               <div class="col-md-4 col-sm-6" style="width:90%;height:80%;overflow:hidden">
                    <a href="./productSelect?productNum=${product.productNum}" data-toggle="modal" data-target="#productSelect" data-whatever="${product.productNum}">
                         <div class="portfolio-thumb">
                              <img src="../resources/upload/product/${product.thumbnail.fileName}" class="img-responsive" alt="Portfolio" style="width:100%;height:100%">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>${product.name}</h3>
                                             <small>${product.subtitle} </small>
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

<!-- Modal -->
<div class="modal" id="productSelect" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div>
	      	<div class="thumbnailHere"></div>
	      	<div class="preContentsHere">
		      	<div class="titleAgainHere"></div>
		      	<div class="subtitleHere"></div>
		      	<div class="includesHere"></div>
		      	<div class="optionsHere"></div>
		      	<div class="grindsHere">
					갈아드릴까요?&nbsp;&nbsp;
					<select name="grind" class="selectpicker">
						<option class="grind">홀빈(갈지 않음)</option>
						<option class="grind">핸드드립/클레버용</option>
						<option class="grind">커피메이커용</option>
						<option class="grind">프렌치프레스용</option>
						<option class="grind">모카포트/에어로프레스용</option>
						<option class="grind">에스프레소 머신용</option>
						<option class="grind">더치/콜드브루용</option>
					</select>
				</div>
				<div class="quantities">
					수량&nbsp;&nbsp;
					<select name="quantity" class="selectpicker" data-width="65px">
						<c:forEach begin="1" end="20" var="i" step="1">
							<option value="${i}" class="quantity">${i}개</option>
						</c:forEach>
					</select><br><br>
				</div>
		   		<div class="buttonsHere">
		   			<div id="cart-btn">장바구니</div>
		   			<div id="order-btn">바로결제</div>
		   		</div>
	   		</div>
   		</div>
   		<div class="noticeHere"><c:import url="./productNotice.jsp"></c:import></div>      
   		<div class="contentsHere"></div>
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
	    	<input type="button" id="optManage" class="btn btn-success" value="옵션 관리">
	    	<input type="button" id="edit" class="btn btn-success" value="수정">
	    	<input type="button" id="delete" class="btn btn-success" value="삭제">
	        <button type="button" class="btn btn-danger">장바구니에 담기</button>
	        <button type="button" class="btn btn-danger">결제하기</button>
	    </div>
   	 </div>
  	</div>
  </div>
</div>



<!-- Hidden -->
<div style="display:none">
	<c:forEach items="${list}" var="product">
		<table class="productDiv" title="${product.productNum}">
			<tr>
			<td class="productNum">${product.productNum}</td>
			<td class="name">${product.name}</td>
			<td class="subtitle">${product.subtitle}</td>
			<td class="includes">${product.includes}</td>
			<td class="contents">${product.contents}</td>
			<td class="details">${product.details}</td>
			<td class="cartInfo">${product.cartInfo}</td>
			<td class="grinds">${product.grinds}</td>
			<td class="fileName">${product.thumbnail.fileName}</td>
			</tr>
		<c:forEach items="${product.options}" var="option">
			<td class="optionDiv">
				<span class="optionNum">${option.optionNum}</span>
				<span class="optionInfo">${option.optionInfo}</span>
				<span class="type">${option.type}</span>
				<span class="price">${option.price}</span>
				<span class="discountRate">${option.discountRate}</span>
			</td>
		</c:forEach>
		</table>
	</c:forEach>
</div>




<script type="text/javascript" src="../resources/jquery/productList.js"></script>
</body>
</html>