package com.bb.bean.options;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OptionsDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String NAMESPACE = "com.bb.bean.options.OptionsDAO.";
	
	public int setInsert(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", optionsDTO);
	}
	
	public int setUpdate(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", optionsDTO);
	}
	
	public int setDelete(OptionsDTO optionsDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", optionsDTO);
	}
	
	
}
