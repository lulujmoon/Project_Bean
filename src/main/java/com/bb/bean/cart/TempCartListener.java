package com.bb.bean.cart;

import java.util.UUID;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.beans.factory.annotation.Autowired;

public class TempCartListener implements HttpSessionListener {
	
	@Autowired
	CartService cartService;
		
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("session 시작");
		String id = UUID.randomUUID().toString();
		se.getSession().setAttribute("tempId", id);
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se){
		System.out.println("세션 끝");
		String id = (String)se.getSession().getAttribute("tempId");
		CartDTO cartDTO = new CartDTO();
		cartDTO.setCartID(id);
		try {
			cartService.setCartIDDelete(cartDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
