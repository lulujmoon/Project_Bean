package com.bb.bean.orderDetails;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bb.bean.orders.OrdersDTO;

@Repository
public class OrderDetailsDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.orderDetails.OrderDetailsDAO.";
	
	public List<OrderDetailsDTO> getRecentOrder(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getRecentOrder", ordersDTO);
	}
	
	public int setInsert(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", orderDetailsDTO);
	}
	
	public List<OrderDetailsDTO> getListbyOrderUid(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getListbyOrderUid", orderDetailsDTO);
	}
	
	public List<OrderDetailsDTO> getListbyId(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getListbyId", ordersDTO);
	}
	
	public int setShippingStateUpdate(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setShippingStateUpdate", orderDetailsDTO);
	}
	
}
