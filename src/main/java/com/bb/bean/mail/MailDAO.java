package com.bb.bean.mail;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MailDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.bb.bean.mail.MailDAO.";

	public List<MailDTO> getList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public int setInsert(MailDTO mailDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert",mailDTO);
	}
	
}
