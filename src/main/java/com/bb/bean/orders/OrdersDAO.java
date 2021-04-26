package com.bb.bean.orders;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersDAO {

	@Autowired
	SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.orders.OrdersDAO.";
	
	public int setInsert(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", ordersDTO);
	}
	
	public String getOrderUid(String orderUid) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOrderUid", orderUid);
	}
	
	public OrdersDTO getSelect(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", ordersDTO);
	}
	
	public int setPayStateUpdate(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setPayStateUpdate", ordersDTO);
	}
}
