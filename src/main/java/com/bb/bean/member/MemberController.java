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
	
	@RequestMapping("memberPage")
	public void memberPage() throws Exception {
	}
	
	
	/*
	 * @GetMapping("") public String checkID(MemberDTO memberDTO, Model model)
	 * throws Exception { memberDTO = memberService.checkId(memberDTO);
	 * 
	 * String result = "0"; //0:사용불가 , 1:사용가능 if(memberDTO==null) { result = "1"; }
	 * model.addAttribute("result", result);
	 * 
	 * return "common/ajaxResult"; }
	 */
	
	
	@GetMapping("memberJoin")
	public void memberJoin() throws Exception {
	}
	
	@PostMapping("memberJoin")
	public String memberJoin(MemberDTO memberDTO) throws Exception {

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
	public String memberUpdate(MemberDTO memberDTO, HttpSession session) throws Exception {
		int result = memberService.memberUpdate(memberDTO);
		
		if(result>0) {
			session.setAttribute("member", memberDTO);
		}
		
		return "redirect:../../";
	}
	
	@GetMapping("memberDelete")
	public String memberDelete(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member"); //object니까 형변환 필요
		//DB에서 삭제 session에서는 DTO가지고 있음
		int result = memberService.memberDelete(memberDTO, session);
		//session에서도 로그아웃 시켜줘야 안뜸
		session.invalidate();
		
		return "redirect:../";
	}
	
	
}
