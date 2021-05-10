<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/cartList.css">
<link rel="stylesheet" href="../resources/css/memberLogin.css">
<link rel="stylesheet" href="../resources/css/memberJoin.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<c:import url="../member/memberLogin.jsp"></c:import>
<c:import url="../member/memberJoin.jsp"></c:import>
	<div class="container">
		
		<h1>Cart</h1>
		
		
		<div class="item-div" style="border-top:1px solid lightgrey">
			상품 (${list.size()})
			<input type="button" value="선택 삭제" id="delChecked-btn" class="btn btn-outline-secondary btn-sm" style="float:right">			
			<input type="button" value="전체 선택" id="checkAll-btn" class="btn btn-outline-secondary btn-sm" title="${member.id}" style="float:right;margin-right:7px">			
		</div>
		<span style="display:none" id="before">${before}</span>
		<!-- 비었을 때 옵션 -->
		<c:if test="${totalPrice==0}">
		<div class="item-div">
			장바구니가 비었습니다.
		</div>
		</c:if>
		<c:forEach items="${list}" var="item">
		<div title="${item.itemNum}" class="item-div">
				<div class="info">
					<input type="checkbox" name="checkedItem" value="${item.itemNum}" id="checkedItem_${item.itemNum}" class="checkedItems">&nbsp;
					<label for="checkedItem_${item.itemNum}">
						${item.product.name} 
					</label>
					<br>
					<label for="checkedItem_${item.itemNum}">
						<c:if test="${item.option.type==null}">
							${item.product.cartInfo}<br>
						</c:if>
						<c:if test="${item.option.type!=null}">
							${item.product.cartInfo}+${item.option.type}<br>
						</c:if>
					</label>
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
			<div class="finalPrice-div">
			상품가격 : ${item.finalPrice}원		
			</div>
		</div>
		</c:forEach>
		
		<div class="prices"> 
			합계 : <span id="totalPrice">${totalPrice}</span>원 + 배송비 : <span class="shipping" id="shipping"></span>원 = <span id="finalPrice"></span>원 
		</div>
		
		<div id="orderShow-btn">결제하기</div>
		<div style="clear:both"></div>
	</div>
	
	<!-- 결제창 -->
	<div class="container">
		<div id="orderDiv" style="display:none">
			
			<form action="../order/orderInsert" method="post" id="frm">
				<div class="chooseInfo">
					<h3 class="infoTitle">배송정보</h3>
					<input type="radio" id="load-addr" name="addr-btn"> <label for="load-addr"> 회원정보에서 불러오기 </label>&nbsp;&nbsp;
					<input type="radio" id="new-addr" name="addr-btn"> <label for="new-addr"> 직접 입력 </label><br><br>	
					배송 메세지 <br>
					<select name="message" id="msg-sel" class="selectpicker" data-width="90%">
						<option value="">선택하세요.</option>
						<option class="msg-opt">배송 전에 연락 주세요.</option>
						<option class="msg-opt">부재 시 경비실에 맡겨주세요.</option>
						<option class="msg-opt">부재 시 문앞에 놔주세요.</option>
						<option>직접 입력</option>
					</select>
					<input type="text" id="message" style="display:none">			
				</div>
				<div class="shippingInfo">
					<span style="display:none"><input type="text" name="id" value="${member.id}" id="id"> class="form-control form-control-sm"</span>
					받는 분 성함 <input type="text" name="buyerName" id="buyerName" required class="form-control form-control-sm"><br>
					전화번호 <input type="text" name="buyerTel" id="buyerTel" required class="form-control form-control-sm"><br>
					우편번호 <div class="postcode"><input type="text" name="buyerPostcode" id="postcode" readonly="readonly" required class="form-control form-control-sm"></div>
					<input type="button" id="popup" value="찾기" class="btn btn-outline-secondary btn-sm"><br><br>
					주소 <input type="text" name="buyerAddr" id="addr" readonly="readonly" required class="form-control form-control-sm"><br>
					상세주소 <input type="text" name="buyerAddr2" id="addr2" required class="form-control form-control-sm"><br>
					<input type="checkbox" id="save-addr"> <label for="save-addr">회원정보에 저장</label> <br>
				</div>
				<div class="orderInfo">
					<h3 class="infoTitle">결제정보</h3>
					<div>
						<span>상품합계</span><span class="calculates">${totalPrice}</span><br>
						<span>배송비</span><span class="shipping calculates"></span><br>
						<span>포인트&nbsp;&nbsp;<input type="text" id="point-use" class="form-control form-control-sm"></span><input type="button" value="모두 사용" id="point-btn" class="btn btn-outline-secondary btn-sm"><br>
						<small style="float:right">보유 포인트 : <span id="max-point">${member.point}</span></small><br>
						<div class="amounts">
							<span>결제금액</span><span id="amount"></span><br>
						</div>
						결제방식&nbsp;&nbsp;
						<select name="payMethod" class="selectpicker" style="float:right">
							<option value="card">신용카드</option>
						</select><br><br>
					</div>
					<div id="order-btn">결제하기</div>
				</div>
			</form>
		</div>
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