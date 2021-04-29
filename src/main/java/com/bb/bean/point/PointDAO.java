package com.bb.bean.point;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bb.bean.orders.OrdersDTO;

@Repository
public class PointDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.point.PointDAO.";
	
	public List<PointDTO> getList(PointDTO pointDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", pointDTO);
	}
	
	public int setInsert(PointDTO pointDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", pointDTO);
	}
	
	public List<PointDTO> getListbyorderUid(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getListbyorderUid", ordersDTO);
	}
}
