package com.bb.bean.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.orders.OrdersDAO;
import com.bb.bean.orders.OrdersDTO;



@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public List<MemberDTO> memberOrder(MemberDTO memberDTO) throws Exception{
		return memberDAO.memberOrder(memberDTO);
	}
	
	public MemberDTO nameCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.nameCheck(memberDTO);
	}
	
	public int update(MemberDTO memberDTO) throws Exception {
		return memberDAO.updatePw(memberDTO);
	}
	
	public MemberDTO findPw(MemberDTO memberDTO) throws Exception {
		return memberDAO.findPw(memberDTO);
	}
	
	public MemberDTO pwCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.pwCheck(memberDTO);
	}
	
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
	