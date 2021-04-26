package com.bb.bean.orders;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.cart.CartDAO;
import com.bb.bean.cart.CartDTO;
import com.bb.bean.product.OptionsDTO;
import com.bb.bean.product.ProductDAO;
import com.bb.bean.product.ProductDTO;
import com.bb.bean.product.ProductService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import com.siot.IamportRestClient.response.PaymentCancelDetail;

@Service
public class OrdersService {
	
	@Autowired
	OrdersDAO ordersDAO;
	
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDAO productDAO;
	
	IamportClient client;

	public String setInsert(OrdersDTO ordersDTO) throws Exception {
		Calendar ca = Calendar.getInstance();
		String format = "yyyyMMddHHmmss";
		SimpleDateFormat sf = new SimpleDateFormat(format);
		String orderUid = sf.format(ca.getTime());
		orderUid = ordersDAO.getOrderUid(orderUid);
		
		String payState = "결제전";
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setCartID(ordersDTO.getId());
		
		long totalPrice = cartDAO.getTotalPrice(cartDTO);
		if(totalPrice<25000) {
			totalPrice = totalPrice+3000;
		}
		
		List<CartDTO> caList = cartDAO.getList(cartDTO);
		long optionNum = caList.get(0).getOptionNum();
		
		OptionsDTO optionsDTO = new OptionsDTO();
		optionsDTO.setOptionNum(optionNum);
		optionsDTO = productDAO.getOptionsSelect(optionsDTO);
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductNum(optionsDTO.getProductNum());
		productDTO = productDAO.getSelect(productDTO);
		String orderName = productDTO.getName();			
		if(caList.size()>1) {
			orderName = orderName+" 외 "+(caList.size()-1);
		}
		
		ordersDTO.setOrderUid(orderUid);
		ordersDTO.setPayState(payState);
		ordersDTO.setAmount(totalPrice);
		ordersDTO.setOrderName(orderName);		
		
		ordersDAO.setInsert(ordersDTO);
		
		return ordersDTO.getOrderUid()+"-"+ordersDTO.getOrderName();
	}
	
	public OrdersDTO getSelect(OrdersDTO ordersDTO) throws Exception {
		return ordersDAO.getSelect(ordersDTO);
	}
	
	public int setPayStateUpdate(OrdersDTO ordersDTO) throws Exception {
		return ordersDAO.setPayStateUpdate(ordersDTO);
		
	}

	public void getToken() {	
		
		try {
			String api_key = "6631825437044890";
			String api_secret = "HHL4Fe8jRuvIN5a8Seyi2wnocECXiRO0zA5fPdyGI4ov9zD2OclQIIeUnRSGJHGihLx6Z6NHbcclLQnz";
			client = new IamportClient(api_key, api_secret);
			
			IamportResponse<AccessToken> auth_response = client.getAuth();
			
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				break;
			case 500 :
				break;
			}
		} catch (IOException e) {
			//서버 연결 실패
			e.printStackTrace();
		}
	}
	
	
	public String paymentByImpUid(String imp_uid, OrdersDTO ordersDTO){
		
		String result = "";
		
		try {
			IamportResponse<Payment> payment_response = client.paymentByImpUid(imp_uid);

			System.out.println("보낸 가격 : "+ordersDTO.getAmount());
			System.out.println("받은 가격 : "+payment_response.getResponse().getAmount());
			System.out.println("결제 상태 : "+payment_response.getResponse().getStatus());
			
			
			if(payment_response.getResponse().getStatus().equals("paid")) {
				long resAmount = payment_response.getResponse().getAmount().longValue();
				if(ordersDTO.getAmount()==resAmount) {
					result = "결제 성공";
				}else {
					result = "결제 금액 불일치";
				}
			}else {
				result = "결제 상태 오류";
			}

			
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				break;
			case 500 :
				break;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String imp_uid_cancelled = imp_uid;
		try {
			IamportResponse<Payment> cancelled_response = client.paymentByImpUid(imp_uid_cancelled);
			
			Payment cancelled = cancelled_response.getResponse();
			PaymentCancelDetail[] cancelDetail = cancelled.getCancelHistory();
			
			System.out.println(cancelDetail.length);
			if(cancelDetail.length!=0) {
				System.out.println(cancelDetail[0].getPgTid());
				result = "취소된 결제 조회";
			}
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				break;
			case 500 :
				break;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public void cancelPaymentChecksumByImpUid(String imp_uid) {
		CancelData cancel_data = new CancelData(imp_uid, true); //imp_uid를 통한 전액취소
		//cancel_data.setChecksum(BigDecimal.valueOf(500)); // checksum 으로 검증 추가

		try {
			IamportResponse<Payment> payment_response = client.cancelPaymentByImpUid(cancel_data);

			if(payment_response.getResponse()==null) {
				System.out.println("취소 완료");
			};
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
				case 401 :
					break;
				case 500 :
					break;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
