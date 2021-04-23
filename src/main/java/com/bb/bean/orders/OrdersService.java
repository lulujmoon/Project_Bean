package com.bb.bean.orders;

import java.io.IOException;

import org.springframework.stereotype.Service;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import com.siot.IamportRestClient.response.PaymentCancelDetail;

@Service
public class OrdersService {
	
	IamportClient client;

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
	
	
	public String paymentByImpUid(long amount, String imp_uid) {
		String result = "";
		try {
			IamportResponse<Payment> payment_response = client.paymentByImpUid(imp_uid);
			
			System.out.println("보낸 imp_uid : "+imp_uid);
			System.out.println("받은 imp_uid : "+payment_response.getResponse().getImpUid());
			System.out.println("보낸 가격 : "+amount);
			System.out.println("받은 가격 : "+payment_response.getResponse().getAmount());
			System.out.println("결제 상태 : "+payment_response.getResponse().getStatus());
			
			
			if(imp_uid.equals(payment_response.getResponse().getImpUid())) {
				if(payment_response.getResponse().getStatus().equals("paid")) {
					long resAmount = payment_response.getResponse().getAmount().longValue();
					if(amount==resAmount) {
						result = "결제 성공";
					}
				}else {
					result = "결제 상태 오류";
				}
			}else{
				result = "imp 고유번호 불일치";
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

}
