package com.bb.bean.cart;

import java.sql.Connection;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.ibatis.cursor.Cursor;
import org.apache.ibatis.executor.BatchResult;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.FrameworkServlet;

public class TempCartListener implements HttpSessionListener {
	
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("session 시작");
		String id = UUID.randomUUID().toString();
		se.getSession().setAttribute("tempId", id);

	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se){
		System.out.println("세션 종료");
		WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(se.getSession().getServletContext(), FrameworkServlet.SERVLET_CONTEXT_PREFIX+"appServlet");
		CartDAO cartDAO = (CartDAO)context.getBean("CartDAO");
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setCartID((String)se.getSession().getAttribute("tempId"));
		try {
			cartDAO.setCartIDDelete(cartDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
