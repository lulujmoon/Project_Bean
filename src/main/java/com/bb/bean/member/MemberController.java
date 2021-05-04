package com.bb.bean.member;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.orders.OrdersDTO;
import com.bb.bean.orders.OrdersService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("memberOrderDetail")
	public void memberOrderDetail() throws Exception {
	}

	@GetMapping("memberQna")
	public void memberQna() throws Exception {
	}

	@GetMapping("memberPoint")
	public void memberPoint() throws Exception {
	}


	@GetMapping("memberOrder")
	public void memberOrder(MemberDTO memberDTO, Model model) throws Exception {
		List<MemberDTO> list = memberService.memberOrder(memberDTO);
		model.addAttribute("list", list);
	}


	@GetMapping("nameCheck")
	public String nameCheck(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.nameCheck(memberDTO);
		String result = memberDTO.getName();
		model.addAttribute("result", result);

		return "common/ajaxResult";
	}

	@GetMapping("findPw")
	public void findPw() throws Exception {

	}

	@PostMapping("findPw")
	public String findPw(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.findPw(memberDTO);

		System.out.println("login 확인 : " + memberDTO);

		if (memberDTO != null) {
			String tempPw = UUID.randomUUID().toString().replace("-", "");
			tempPw = tempPw.substring(0, 10);

			System.out.println("임시비밀번호 확인 : " + tempPw);

			memberDTO.setPw(tempPw);
			memberService.update(memberDTO);
			model.addAttribute("memberFind", memberDTO);
		}

		return "member/issuePw";
	}

	@GetMapping("pwCheck")
	public String pwCheck(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.pwCheck(memberDTO);
		String result = memberDTO.getPw();
		model.addAttribute("result", result);

		return "common/ajaxResult";
	}

	@GetMapping("idCheck")
	public String idCheck(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.memberIdCheck(memberDTO);
		String result = memberDTO.getId();
		model.addAttribute("result", result);

		return "common/ajaxResult";
	}

	@GetMapping("nickCheck")
	public String nickCheck(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.nickCheck(memberDTO);
		String result = "0";
		if (memberDTO == null) {
			result = "1";
		}
		model.addAttribute("result", result);

		return "common/ajaxResult";
	}

	@RequestMapping("memberPage")
	public void memberPage() throws Exception {;
	}

	@GetMapping("memberIdCheck")
	public String memberIdCheck(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.memberIdCheck(memberDTO);
		String result = "0";// 0: 사용불가 1:사용가능
		if (memberDTO == null) {
			result = "1";
		}

		model.addAttribute("result", result);

		return "common/ajaxResult";
	}

	@GetMapping("memberJoin")
	public void memberJoin() throws Exception {
	}

	@PostMapping("memberJoin")
	public String memberJoin(MemberDTO memberDTO, Model model) throws Exception {
		int result = memberService.memberJoin(memberDTO);

		String message = "회원가입 실패";
		String path = "./memberJoin"; // url주소창 보고 현재 위치가 member폴더 밑

		if (result > 0) {
			message = "회원가입 성공";
			path = "../";
		}

		model.addAttribute("msg", message);
		model.addAttribute("path", path);

		return "common/commonResult";
	}

	@GetMapping("memberLogin")
	public void memberLogin() throws Exception {

	}

	@PostMapping("memberLogin")
	public String memberLogin(MemberDTO memberDTO, HttpSession session, HttpServletRequest request) throws Exception {

		memberDTO = memberService.memberLogin(memberDTO);
		session.setAttribute("member", memberDTO);

		String referer = request.getHeader("Referer");
		System.out.println(referer);
		int idx = referer.indexOf("/", 16);
		referer = referer.substring(idx);
		System.out.println(referer);
		request.getSession().setAttribute("redirectURI", referer);

		return "common/pathResult";
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

		if (result > 0) {
			session.setAttribute("member", memberDTO);
		}

		return "redirect:../../";
	}
	
	@GetMapping("memberDelete")
	public String memberDelete(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member"); // object니까 형변환 필요
		// DB에서 삭제 session에서는 DTO가지고 있음
		int result = memberService.memberDelete(memberDTO, session);
		// session에서도 로그아웃 시켜줘야 안뜸
		session.invalidate();

		return "redirect:../";
	}

	@GetMapping("memberList")
	public ModelAndView memberList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> ar = memberService.memberList();
		mv.addObject("list", ar);
		mv.setViewName("/member/memberList");
		return mv;
		
		
	}
}
