package com.bb.bean.member;

import java.io.IOException;
import java.net.http.HttpHeaders;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("auth/kakao/callback")
	public @ResponseBody String kakaoCallback(String code) throws Exception { // Data를 리턴해주는 컨트롤러 함수

		// POST방식으로 key=value 데이터 요청 (카카오쪽으로)

		// HttpHeader 오브젝트 생성
		RestTemplate rt = new RestTemplate();
		org.springframework.http.HttpHeaders headers = new org.springframework.http.HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "8ff76055d95974b4011e5f3f9ce21531");
		params.add("redirect_uri", "http://localhost/bean/member/auth/kakao/callback");
		params.add("code", code);

		// HttpHeader와 HttpBody를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<MultiValueMap<String, String>>(
				params, headers);

		// Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response = rt.exchange("https://kauth.kakao.com/oauth/token", HttpMethod.POST,
				kakaoTokenRequest, String.class);

		// Gson, Json Simple, ObjectMapper
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("카카오 엑세스 토큰 : " + oauthToken.getAccess_token());

		// HttpHeader 오브젝트 생성
		RestTemplate rt2 = new RestTemplate();
		org.springframework.http.HttpHeaders headers2 = new org.springframework.http.HttpHeaders();
		headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// HttpHeader와 HttpBody를 하나의 오브젝트에 담기

		 HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest = 
		 new HttpEntity<>(headers2);


		
		 // Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음 
		 ResponseEntity<String> response2 = rt2.exchange( 
				 "http://kapi.kakao.com/v2/user/me",
				 HttpMethod.POST, 
				 kakaoProfileRequest, 
				 String.class 
				 );	

		return response2.getBody();
	}

	@GetMapping("memberQna")
	public void memberQna() throws Exception {
	}

	@GetMapping("memberPoint")
	public void memberPoint() throws Exception {
	}

	@GetMapping("memberSubscrip")
	public void memberSubscrip() throws Exception {
	}

	@GetMapping("memberOrder")
	public void memberOrder() throws Exception {
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
	public void memberPage() throws Exception {
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

}
