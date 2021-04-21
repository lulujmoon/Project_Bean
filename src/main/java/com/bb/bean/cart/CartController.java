package com.bb.bean.cart;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.member.MemberDTO;

@Controller
@RequestMapping("/cart/**")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@GetMapping("cartList")
	public ModelAndView getList(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		CartDTO cartDTO = new CartDTO();
		//session에서 id를 받아온다. 없으면 tempId로 임시 아이디를 저장. 이때 tempId가 존재하면 그 값을 사용.
		String id="";
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		if(memberDTO==null) {
			if((String)session.getAttribute("tempId")!=null) {
				id = (String)session.getAttribute("tempId");
			}else {
				id = UUID.randomUUID().toString();
				id = id.substring(10);
				session.setAttribute("tempId", id);				
			}
		}else {
			id = memberDTO.getId();
			//비회원 상태에서 장바구니에 넣은 상품이 있다면 로그인 후 넣어주기
			if((String)session.getAttribute("tempId")!=null) {
				String ex = (String)session.getAttribute("tempId");
				cartService.setCartIDUpdate(ex, id);
			}
		}
		
		cartDTO.setCartID(id);
		
		List<CartDTO> li = cartService.getList(cartDTO);
		
		long totalPrice = cartService.getTotalPrice(cartDTO);
		
		mv.addObject("list", li);
		mv.addObject("totalPrice", totalPrice);
		mv.setViewName("cart/cartList");
		return mv;
	}	
	
	@PostMapping("cartInsert")
	public ModelAndView setInsert(CartDTO cartDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//session에서 id를 받아온다. 없으면 tempId로 임시 아이디를 저장. 이때 tempId가 존재하면 그 값을 사용.
		String id="";
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		if(memberDTO==null) {
			if((String)session.getAttribute("tempId")!=null) {
				id = (String)session.getAttribute("tempId");
			}else {
				id = UUID.randomUUID().toString();
				id = id.substring(10);
				session.setAttribute("tempId", id);				
			}
		}else {
			id = memberDTO.getId();
		}
		
		cartDTO.setCartID(id);
		System.out.println(id);

		int result = cartService.setInsert(cartDTO);
		
		mv.addObject("result", result);
		
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("cartUpdate")
	public ModelAndView setUpdate(CartDTO cartDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//session에서 id를 받아온다. 없으면 tempId로 임시 아이디를 저장. 이때 tempId가 존재하면 그 값을 사용.
		String id="";
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		if(memberDTO==null) {
			if((String)session.getAttribute("tempId")!=null) {
				id = (String)session.getAttribute("tempId");
			}
		}else {
			id = memberDTO.getId();
		}
		
		cartDTO.setCartID(id);
		
		cartService.setUpdate(cartDTO);
		long totalPrice = cartService.getTotalPrice(cartDTO);
		
		mv.addObject("result", totalPrice);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("cartDelete")
	public ModelAndView setDelete(CartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		cartDTO = cartService.setDelete(cartDTO);
		long totalPrice = cartService.getTotalPrice(cartDTO);
		
		mv.addObject("result", totalPrice);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	
	/* Test */
	
	@GetMapping("orderTest")
	public void orderTest() throws Exception {}
}
