package com.bb.bean.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	private kakao_restapi kr = new kakao_restapi();
	
	@RequestMapping(value = "/oauth", produces = "application/json")
	public String kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session) {
		System.out.println("로그인 할때 임시 코드값");
		//카카오 홈페이지에서 받은 결과 코드
		System.out.println(code);
		System.out.println("로그인 후 결과값");

		//카카오 rest api 객체 선언
		kakao_restapi kr = new kakao_restapi();
		//결과값을 node에 담아줌
		JsonNode node = kr.getAccessToken(code);
		//결과값 출력
		System.out.println(node);
		//노드 안에 있는 access_token값을 꺼내 문자열로 변환
		String token = node.get("access_token").toString();
		//세션에 담아준다.
		session.setAttribute("token", token);

		return "logininfo";
	}





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
	@GetMapping("kakaoRedirectForm")
	public void kakaoLogin() throws Exception {

	}



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
