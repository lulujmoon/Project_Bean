package com.bb.bean.orderDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderDetailsController {

	@Autowired
	private OrderDetailsService orderDetailsService;
	
<<<<<<< Updated upstream
=======
	@GetMapping("/member/memberOrder")
	public void getListbyId(OrdersDTO ordersDTO, Model model) throws Exception {
		List<OrderDetailsDTO> list = orderDetailsService.getListbyId(ordersDTO);
		model.addAttribute("list", list);
	}
	
>>>>>>> Stashed changes
	@GetMapping("/member/memberOrderDetail")
	public void getListbyOrderUid(OrderDetailsDTO orderDetailsDTO, Model model) throws Exception {
		List<OrderDetailsDTO> list = orderDetailsService.getListbyOrderUid(orderDetailsDTO);
		model.addAttribute("list", list);
<<<<<<< Updated upstream
=======
		long [] prices = orderDetailsService.calculatePrices(list);
		model.addAttribute("prices", prices);
>>>>>>> Stashed changes
	}
	
}
