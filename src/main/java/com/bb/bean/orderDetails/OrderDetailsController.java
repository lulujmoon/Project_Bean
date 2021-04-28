package com.bb.bean.orderDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderDetailsController {

	@Autowired
	private OrderDetailsService orderDetailsService;
	
	public ModelAndView getListbyOrderUid(OrderDetailsDTO orderDetailsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<OrderDetailsDTO> list = orderDetailsService.getListbyOrderUid(orderDetailsDTO);
		mv.addObject("list", list);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
}
