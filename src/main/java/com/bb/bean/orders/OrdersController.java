package com.bb.bean.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.cart.CartDTO;
import com.bb.bean.cart.CartService;

@Controller
@RequestMapping("order/**")
public class OrdersController {
	
	@Autowired
	OrdersService ordersService;
	
	@Autowired
	CartService cartService;
	
	@PostMapping("orderInsert")
	public ModelAndView orderInsert(OrdersDTO ordersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		String result = ordersService.setInsert(ordersDTO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	
	@PostMapping("orderCheck")
	public ModelAndView orderCheck(String imp_uid, String orderUid) throws Exception {
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setOrderUid(orderUid);
		ordersDTO = ordersService.getSelect(ordersDTO);
		
		ordersService.getToken();

		String result = ordersService.paymentByImpUid(imp_uid, ordersDTO);
		
		if(result.equals("결제 성공")) {
			ordersDTO.setPayState("결제완료");
			ordersService.setPayStateUpdate(ordersDTO);
			result = "결제가 완료되었습니다.";
			
			CartDTO cartDTO = new CartDTO();
			cartDTO.setCartID(ordersDTO.getId());
			cartService.setCartIDDelete(cartDTO);
		}else {
			ordersService.cancelPaymentChecksumByImpUid(imp_uid);
			ordersDTO.setPayState("비정상결제");
			ordersService.setPayStateUpdate(ordersDTO);
			result = "비정상적인 결제 시도입니다.";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");

		return mv;
	}
}
