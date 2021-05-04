package com.bb.bean.orders;

import java.util.List;

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
	
	public int setDelete(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", ordersDTO);
	}
	
	//admin
	public List<OrdersDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
}
