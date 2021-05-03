package com.bb.bean.orderDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bb.bean.orders.OrdersDTO;

@Controller
public class OrderDetailsController {

	@Autowired
	private OrderDetailsService orderDetailsService;
	
	@GetMapping("/member/memberOrderDetail")
	public void getListbyOrderUid(OrderDetailsDTO orderDetailsDTO, Model model) throws Exception {
		List<OrderDetailsDTO> list = orderDetailsService.getListbyOrderUid(orderDetailsDTO);
		model.addAttribute("list", list);
	}
	
	@GetMapping("/member/memberOrder")
	public void getListbyId(OrdersDTO ordersDTO, Model model) throws Exception {
		List<OrderDetailsDTO> list = orderDetailsService.getListbyId(ordersDTO);
		System.out.println(list.size());
		model.addAttribute("list", list);
	}
	
}
