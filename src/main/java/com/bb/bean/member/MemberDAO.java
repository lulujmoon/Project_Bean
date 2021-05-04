package com.bb.bean.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.bb.bean.member.MemberDAO.";
	
	public MemberDTO getMember(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getMember", memberDTO);
	}

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
	
	/* 배송정보 관련 */
	public int setAddrUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setAddrUpdate", memberDTO);
	}
	
	/* 포인트 적립 관련 */
	public int setPointUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setPointUpdate", memberDTO);
	}
	
	/* 멤버 리스트 */
	public List<MemberDTO> memberList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"memberList");
	}
	
}


