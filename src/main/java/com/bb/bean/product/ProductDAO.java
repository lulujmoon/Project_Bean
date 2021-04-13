package com.bb.bean.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.product.ProductDAO.";
	
	public List<ProductDTO> getList(ProductDTO productDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", productDTO);
	}
	
	public ProductDTO getSelect(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", productDTO);
	}
	
	public int setInsert(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", productDTO);
	}
}
