package com.bb.bean.orderDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.orders.OrdersDTO;

@Service
public class OrderDetailsService {

	@Autowired
	private OrderDetailsDAO orderDetailsDAO;
	
	public int setInsert(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return orderDetailsDAO.setInsert(orderDetailsDTO);
	}
	
	public List<OrderDetailsDTO> getListbyOrderUid(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return orderDetailsDAO.getListbyOrderUid(orderDetailsDTO);
	}
	
	public List<OrderDetailsDTO> getListbyId(OrdersDTO ordersDTO) throws Exception {
		return orderDetailsDAO.getListbyId(ordersDTO);
	}

}
