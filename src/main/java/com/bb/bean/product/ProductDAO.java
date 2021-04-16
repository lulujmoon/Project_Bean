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
		System.out.println(productDTO.getCategory());
		return sqlSession.insert(NAMESPACE+"setInsert", productDTO);
	}
	
	public int setUpdate(ProductDTO productDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", productDTO);
	}
	
	public int setDelete(ProductDTO productDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", productDTO);
	}
	
	
	/* Options */
	
	public List<OptionsDTO> getOptionsList(ProductDTO productDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getOptionsList", productDTO);
	}
	
	public int setOptionsInsert(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setOptionsInsert", optionsDTO);
	}
	
	public int setOptionsUpdate(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setOptionsUpdate", optionsDTO);
	}
	
	public int setOptionsDelete(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setOptionsDelete", optionsDTO);
	}
}
