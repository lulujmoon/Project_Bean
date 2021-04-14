package com.bb.bean.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.bb.bean.member.MemberDAO.";
		
	public MemberDTO checkId(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"checkId", memberDTO);
	}
	
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"memberJoin", memberDTO);	
	}
	
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"memberLogin", memberDTO);
	}
	
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"memberUpdate", memberDTO);
	}
	
	public int memberDelete(MemberDTO memberDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"memberDelete", memberDTO);
	}
	
	
}
