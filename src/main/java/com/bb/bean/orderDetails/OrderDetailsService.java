package com.bb.bean.orderDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.orders.OrdersDTO;
import com.bb.bean.point.PointDAO;
import com.bb.bean.point.PointDTO;
import com.bb.bean.product.OptionsDTO;
import com.bb.bean.product.ProductDAO;

@Service
public class OrderDetailsService {

	@Autowired
	private OrderDetailsDAO orderDetailsDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private PointDAO pointDAO;
	
	public int setInsert(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return orderDetailsDAO.setInsert(orderDetailsDTO);
	}
	
	public List<OrderDetailsDTO> getListbyId(OrdersDTO ordersDTO) throws Exception {
		return orderDetailsDAO.getListbyId(ordersDTO);
	}
	
	public List<OrderDetailsDTO> getListbyOrderUid(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return orderDetailsDAO.getListbyOrderUid(orderDetailsDTO);
	}
	
	public long [] calculatePrices(List<OrderDetailsDTO> odList) throws Exception {
		//1. 정가 계산
		long originPrices=0;
		long finalPrices=0;
		for(OrderDetailsDTO od:odList) {
			OptionsDTO optionsDTO = new OptionsDTO();
			optionsDTO.setOptionNum(od.getOptionNum());
			optionsDTO = productDAO.getOptionSelect(optionsDTO);
			
			long originPrice = optionsDTO.getPrice()*od.getQuantity();
			originPrices = originPrices + originPrice;
			
			finalPrices = finalPrices + od.getFinalPrice();
		}
		
		//2. 할인액 계산
		long discounts = originPrices - finalPrices;
		
		//3. 배송비 계산
		long shipping = 0;
		if(finalPrices<25000) {
			shipping = 3000;
		}
		
		//4. 포인트 계산
		long usePoint = 0;
		
		PointDTO pointDTO = new PointDTO();
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setOrderUid(odList.get(0).getOrderUid());
		pointDTO = pointDAO.getSelectbyOrderUid(ordersDTO);
		
		if(pointDTO!=null) {
			usePoint = pointDTO.getUsePoint();			
		}
		
		long [] prices = {originPrices, finalPrices, discounts, shipping, usePoint};
		
		
		return prices;
	}

}
