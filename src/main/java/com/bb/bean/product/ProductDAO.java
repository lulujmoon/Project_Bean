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
	
	public long getProductNum() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getProductNum", NAMESPACE);
	}
	
	public int setInsert(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", productDTO);
	}
	
	public int setUpdate(ProductDTO productDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", productDTO);
	}
	
	public int setDelete(ProductDTO productDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", productDTO);
	}
	
	
	/* Thumbnail*/
	
	public int setFileInsert(ProductFileDTO productFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFileInsert", productFileDTO);
	}
	
	public int setFileDelete(ProductFileDTO productFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", productFileDTO);
	}
	
	/* Options */
	
	public List<OptionsDTO> getOptionList(ProductDTO productDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getOptionList", productDTO);
	}
	
	public OptionsDTO getOptionSelect(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOptionSelect", optionsDTO);
	}
	
	public int setOptionInsert(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setOptionInsert", optionsDTO);
	}
	
	public int setOptionUpdate(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setOptionUpdate", optionsDTO);
	}
	
	public int setOptionDelete(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setOptionDelete", optionsDTO);
	}
}
