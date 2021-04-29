package com.bb.bean.orderDetails;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDetailsDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.orderDetails.OrderDetailsDAO.";
	
	public int setInsert(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", orderDetailsDTO);
	}
	
	public List<OrderDetailsDTO> getListbyOrderUid(OrderDetailsDTO orderDetailsDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getListbyOrderUid", orderDetailsDTO);
	}
	
}
