package com.bb.bean.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart/**")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@GetMapping("cartList")
	public ModelAndView getList(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		CartDTO cartDTO = new CartDTO();
		//session 받아와서 넘기기
		cartDTO.setCartID("id1");
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
		
		//session에서 id를 받아온다. 일단 테스트로 임의로 넣기
		cartDTO.setId("id1");
		int result = cartService.setInsert(cartDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("cartUpdate")
	public ModelAndView setUpdate(CartDTO cartDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//session에서 id 받기
		cartDTO.setCartID("id1");
		
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
