package com.bb.bean.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	public String checkID(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.checkId(memberDTO);
		
		String result = "0"; //0:사용불가 , 1:사용가능
		if(memberDTO==null) {
			result = "1";
		}
		model.addAttribute("result", result);
		
		return "common/ajaxResult";
	}
	
	
	@GetMapping("memberJoin")
	public void memberJoin() throws Exception {
	}
	
	@PostMapping("memberJoin")
	public String memberJoin(MemberDTO memberDTO) throws Exception {
		System.out.println(memberDTO.getId());
		System.out.println(memberDTO.getPw());
		System.out.println(memberDTO.getName());
		System.out.println(memberDTO.getNickname());
		System.out.println(memberDTO.getGender());
		System.out.println(memberDTO.getBirthday());
		System.out.println(memberDTO.getPoint());
		System.out.println(memberDTO.getPostcode());
		System.out.println(memberDTO.getTel());
		System.out.println(memberDTO.getAddr());
		System.out.println(memberDTO.getAddr2());
		int result = memberService.memberJoin(memberDTO);
		 
		return "redirect:../";
	}
	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception {
	}
	
	
	@PostMapping("memberLogin")
	public String memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		memberDTO = memberService.memberLogin(memberDTO);
		session.setAttribute("member", memberDTO);
		 return "redirect:../";
	}
	
	@GetMapping("memberLogout")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:../";
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
