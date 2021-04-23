package com.bb.bean.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("order/**")
public class OrdersController {
	
	@Autowired
	OrdersService ordersService;
	
	@PostMapping("orderCheck")
	public ModelAndView orderCheck(long amount, String imp_uid) throws Exception {
		ordersService.getToken();
		String result = ordersService.paymentByImpUid(amount, imp_uid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", "test");
		mv.setViewName("common/ajaxResult");
		return mv;
	}
}
