package com.bb.bean.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.cart.CartDAO.";
	
	public List<CartDTO> getList(CartDTO cartDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", cartDTO);
	}
	
	public CartDTO getSelect(CartDTO cartDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", cartDTO);
	}
	
	public long getTotalPrice(CartDTO cartDTO) throws Exception {
		long totalPrice;
		if(sqlSession.selectOne(NAMESPACE+"getTotalPrice", cartDTO)==null) {
			totalPrice = 0;
		}else {
			totalPrice = sqlSession.selectOne(NAMESPACE+"getTotalPrice", cartDTO);
		}
		return totalPrice;
	}
	
	public int setInsert(CartDTO cartDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", cartDTO);
	}

	public int setUpdate(CartDTO cartDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", cartDTO);
	}
	
	public int setCartIDUpdate(CartDTO cartDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setCartIDUpdate", cartDTO);
	}
	
	public int setDelete(CartDTO cartDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", cartDTO);
	}
}
