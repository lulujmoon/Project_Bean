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
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	<div class="container">
		
		<input type="button" value="전체 삭제" id="delAll-btn" title="${member.id}" style="float:right">
		<h1>Cart</h1>
		
		<span style="display:none" id="before">${before}</span>
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
			<div style="font-weight:bold;font-size:large;float:right">
			상품가격 : ${item.finalPrice}				
			</div>
		</div>
		</c:forEach>
		
		<div style="border:1px solid lightgrey;padding:15px;background-color:lightgrey;text-align: right"> 
			합계 : <span id="totalPrice">${totalPrice}</span>원 + 배송비 : <span class="shipping" id="shipping"></span>원 = <span id="finalPrice"></span>원 
		</div>
		
		<input type="button" class="btn btn-warning" value="결제하기" id="orderShow-btn" style="float:right;margin:20px 0">
		<div style="clear:both"></div>
	</div>
	
	
	
	<div id="orderDiv" class="container" style="display:none">
		
		<form action="../order/orderInsert" method="post" id="frm">
			<h3>배송정보</h3>
			<input type="radio" id="load-addr" name="addr-btn"> 회원정보에서 불러오기
			<input type="radio" id="new-addr" name="addr-btn"> 직접 입력 <br>		
			<span style="display:none"><input type="text" name="id" value="${member.id}" id="id"></span>
			받는 분 성함 <input type="text" name="buyerName" id="buyerName" required><br>
			전화번호 <input type="text" name="buyerTel" id="buyerTel" required><br>
			우편번호 <input type="text" name="buyerPostcode" id="postcode" readonly="readonly" required>
			<input type="button" id="popup" value="찾기"><br>
			주소 <input type="text" name="buyerAddr" id="addr" readonly="readonly" required><br>
			상세주소 <input type="text" name="buyerAddr2" id="addr2" required><br>
			<input type="checkbox" id="save-addr"> 회원정보에 저장 <br>
			배송 메세지 
			<select name="message" id="msg-sel">
				<option value="배송 전에 연락 주세요." class="msg-opt">배송 전에 연락 주세요.</option>
				<option class="msg-opt">부재 시 경비실에 맡겨주세요.</option>
				<option class="msg-opt">부재 시 문앞에 놔주세요.</option>
				<option>직접 입력</option>
			</select>
			<input type="text" id="message" style="display:none">
		<h3>결제정보</h3>
		<p>
			상품합계 : ${totalPrice}<br>
			배송비 : <span class="shipping"></span><br>
			<span><input type="text" id="point-use"></span><input type="button" value="모두 사용" id="point-btn"><br>
			<small>보유 포인트 : <span id="max-point">${member.point}</span></small><br>
			결제금액 : <span id="amount"></span><br>
			결제방식 : 
			<select name="payMethod">
				<option value="card">신용카드</option>
			</select>
		</p>
		<input type="button" value="결제하기" id="order-btn">
		</form>
	</div>
	
	
	
<c:import url="../template/footer.jsp"></c:import>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../resources/jquery/cartList.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
	/* 주소 입력 선택 */
	$("#new-addr").click(function(){
		$("#buyerName").val("");
		$("#buyerTel").val("");
		$("#postcode").val("");
		$("#addr").val("");
		$("#addr2").val("");
	});
	
	$("#load-addr").click(function(){
		$("#buyerName").val("${member.name}");
		$("#buyerTel").val("${member.tel}");
		$("#postcode").val("${member.postcode}");
		$("#addr").val("${member.addr}");
		$("#addr2").val("${member.addr2}");
	});
</script>
<script type="text/javascript" src="../resources/jquery/order.js"></script>
</body>
</html>