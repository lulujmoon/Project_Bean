<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h1>Cart</h1>
		
		<!-- 비었을 때 옵션 -->
		<c:if test="${totalPrice==0}">
		<div style="border:1px solid lightgrey;padding:20px;">
			장바구니가 비었습니다.
		</div>
		</c:if>

		<c:forEach items="${list}" var="item">
		<div title="${item.itemNum}" style="border:1px solid lightgrey;padding:20px;">
			<div class="info">
				${item.product.name} 
				<input type="button" value="X" class="del-btn" title="${item.itemNum}" style="float:right">
				<br>
				<c:if test="${item.option.type==null}">
					${item.product.cartInfo}<br>
				</c:if>
				<c:if test="${item.option.type!=null}">
					${item.product.cartInfo}+${item.option.type}<br>
				</c:if>
			</div>
			<c:if test="${item.grind!=null}">
				<span class="grinds">
					분쇄도 : 
					<select name="grind" title="${item.grind}" class="update">
						<option class="grind">홀빈(갈지 않음)</option>
						<option class="grind">핸드드립/클레버용</option>
						<option class="grind">커피메이커용</option>
						<option class="grind">프렌치프레스용</option>
						<option class="grind">모카포트/에어로프레스용</option>
						<option class="grind">에스프레소 머신용</option>
						<option class="grind">더치/콜드브루용</option>				
					</select>
				</span>
			</c:if>
			<span class="quantities">
				수량 : 
				<select name="quantity" title="${item.quantity}" class="update">
					<c:forEach begin="1" end="20" var="i" step="1">
						<option value="${i}" class="quantity">${i}개</option>
					</c:forEach>
				</select>
			</span>
			<div>
			상품가격 : ${item.fPrice}				
			</div>
		</div>
		</c:forEach>
		
		<div style="border:1px solid lightgrey;padding:15px;background-color:lightgrey;text-align: right;"> 
			합계 : <span id="totalPrice">${totalPrice}</span> + 배송비 : <span class="shipping" id="shipping"></span> = <span class="final"></span> 
		</div>
	</div>
	
	
	
	<div id="orderDiv" class="container" style="margin-top:50px">
		
			<h3>배송정보</h3>
			<p>
			받는 분 성함 <input type="text" name="buyerName" id="buyerName" required><br>
			전화번호 <input type="text" name="buyerTel" id="buyerTel" required><br>
			우편번호<input type="text" name="buyerPostcode" id="postcode" readonly="readonly" required>
			<input type="button" id="popup" value="찾기"><br>
			주소<input type="text" name="buyerAddr" id="addr" readonly="readonly" required><br>
			상세주소<input type="text" name="buyerAddr2" required><br>
			</p>
			<h3>결제정보</h3>
			<p>
			상품합계 : ${totalPrice}<br>
			배송비 : <span class="shipping"></span><br>
			<span id="point">포인트 : </span>
			결제금액 : <span class="final" id="final"></span><br>
			</p>
			<p>
			포인트 : <input type="text"> <input type="button" value="모두 사용" id="point-btn">
			<small>보유 포인트 : </small>
			</p>
			<input type="button" value="결제하기" id="order-btn">
	</div>
	
	
	
<c:import url="../template/footer.jsp"></c:import>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../resources/jquery/cartList.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="../resources/jquery/order.js"></script>
</body>
</html>