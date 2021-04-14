package com.bb.bean.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	public MemberDTO checkId(MemberDTO memberDTO) throws Exception{
		return memberDAO.checkId(memberDTO);
	}
	
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		return memberDAO.memberJoin(memberDTO);
	}

	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return memberDAO.memberLogin(memberDTO);
	}
	
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		return memberDAO.memberUpdate(memberDTO);
	}
	
	public int memberDelete(MemberDTO memberDTO) throws Exception {
		return memberDAO.memberDelete(memberDTO);
	}
	
	
	
	
	
	
	
	
	
	
}
	