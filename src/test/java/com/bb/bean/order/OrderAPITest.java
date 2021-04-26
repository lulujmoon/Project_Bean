//package com.bb.bean.order;
//
//import static org.junit.Assert.*;
//
//import java.io.IOException;
//
//import org.junit.Before;
//import org.junit.Test;
//
//import com.bb.bean.SampleTest;
//import com.siot.IamportRestClient.IamportClient;
//import com.siot.IamportRestClient.exception.IamportResponseException;
//import com.siot.IamportRestClient.response.AccessToken;
//import com.siot.IamportRestClient.response.IamportResponse;
//
//public class OrderAPITest extends SampleTest {
//
//	IamportClient client;
//
//	
//	@Test
//	public void testGetToken() {
//		try {
//			String test_api_key = "6631825437044890";
//			String test_api_secret = "HHL4Fe8jRuvIN5a8Seyi2wnocECXiRO0zA5fPdyGI4ov9zD2OclQIIeUnRSGJHGihLx6Z6NHbcclLQnz";
//			client = new IamportClient(test_api_key, test_api_secret);
//			
//			IamportResponse<AccessToken> auth_response = client.getAuth();
//			
//			assertNotNull(auth_response.getResponse());
//			assertNotNull(auth_response.getResponse().getToken());
//		} catch (IamportResponseException e) {
//			System.out.println(e.getMessage());
//			
//			switch(e.getHttpStatusCode()) {
//			case 401 :
//				//TODO
//				break;
//			case 500 :
//				//TODO
//				break;
//			}
//		} catch (IOException e) {
//			//서버 연결 실패
//			e.printStackTrace();
//		}
//	}
//}
