package com.bb.bean.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberDTO nickCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.nickCheck(memberDTO);
	}
	
	public MemberDTO memberIdCheck(MemberDTO memberDTO)throws Exception{
		return memberDAO.memberIdCheck(memberDTO);
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
	
	public int memberDelete(MemberDTO memberDTO, HttpSession session) throws Exception {
		return memberDAO.memberDelete(memberDTO);
	}
	
	
	
	
	
	
	
	
	
	
}
	