package com.bb.bean.orders;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersDAO {

	@Autowired
	SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.orders.OrdersDAO";
	
	public int setOrdersInsert(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"ordersInsert", ordersDTO);
	}
}
