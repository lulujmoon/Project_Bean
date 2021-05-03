package com.bb.bean.orders;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersDAO {

	@Autowired
	SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.orders.OrdersDAO.";
	
	public OrdersDTO getRecentOrder(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getRecentOrder", ordersDTO);
	}
	
	public int setInsert(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", ordersDTO);
	}
	
	public String getOrderUid(String orderUid) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOrderUid", orderUid);
	}
	
	public int setImpUidUpdate(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setImpUidUpdate", ordersDTO);
	}
	
	public OrdersDTO getSelect(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", ordersDTO);
	}
	
	public OrdersDTO getSelectByImpUid(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelectByImpUid", ordersDTO);
	}
	
	public int setPayStateUpdate(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setPayStateUpdate", ordersDTO);
	}
	
	public int setPayMethodUpdate(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setPayMethodUpdate", ordersDTO);
	}
}
