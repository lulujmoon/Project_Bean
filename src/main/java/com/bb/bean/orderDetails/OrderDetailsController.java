package com.bb.bean.orderDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderDetailsController {

	@Autowired
	private OrderDetailsService orderDetailsService;
	
	@GetMapping("/member/memberOrder")
	public void getListbyOrderUid(OrderDetailsDTO orderDetailsDTO, Model model) throws Exception {
		orderDetailsDTO.setOrderUid("202104281039305003");
		List<OrderDetailsDTO> list = orderDetailsService.getListbyOrderUid(orderDetailsDTO);
		model.addAttribute("list", list);
	}
}
