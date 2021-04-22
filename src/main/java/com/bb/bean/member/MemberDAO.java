package com.bb.bean.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.bb.bean.member.MemberDAO.";
	
	public MemberDTO nameCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"nameCheck", memberDTO);
	}
	
	public int updatePw(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"updatePw", memberDTO);
	}
	
	public MemberDTO findPw(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"findPw", memberDTO);
	}
	
	public MemberDTO pwCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"pwCheck", memberDTO);
	}
 		
	public MemberDTO nickCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"nickCheck", memberDTO);
	}
	
	public MemberDTO memberIdCheck(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"memberIdCheck", memberDTO);
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
