package com.bb.bean.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberJoin")
	public void memberJoin() throws Exception {
	}
	
	@PostMapping("memberJoin")
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		return memberService.memberJoin(memberDTO);
	}
	
	@GetMapping("memberLogin")
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return memberService.memberLogin(memberDTO);
	}
	
	@GetMapping("memberUpdate")
	public void memberUpdate() throws Exception {
	}
	
	@PostMapping("memberUpdate")
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		return memberService.memberUpdate(memberDTO);
	}
	
	public int memberDelete(MemberDTO memberDTO) throws Exception {
		return memberService.memberDelete(memberDTO);
	}
	
	
}
