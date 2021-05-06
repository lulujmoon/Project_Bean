package com.bb.bean.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.mail.MailDTO;
import com.bb.bean.mail.MailService;
import com.bb.bean.member.MemberDTO;
import com.bb.bean.member.MemberService;
import com.bb.bean.orders.OrdersDTO;
import com.bb.bean.orders.OrdersService;
import com.bb.bean.product.ProductDTO;
import com.bb.bean.product.ProductService;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	OrdersService ordersService;
	
	@Autowired
	MailService mailService;
	
	@GetMapping("adminmenu")
	public void adminList()throws Exception {
	}
	
	@GetMapping("productManage")
	public void productManage(ProductDTO productDTO, Model model) throws Exception {
		List<ProductDTO> list = productService.getList(productDTO);
		model.addAttribute("list", list);
	}
	
	@GetMapping("memberList")
	public ModelAndView memberList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> ar = memberService.memberList();
		mv.addObject("list", ar);
		return mv;
			
	}
	@GetMapping("orderManage")
	public ModelAndView orderManage(OrdersDTO ordersDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> list = ordersService.getList();
		mv.addObject("list", list);
		return mv;
	}
	
	@GetMapping("mailList")
	public ModelAndView getList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MailDTO> ar = mailService.getList();
		mv.addObject("list",ar);
		mv.setViewName("admin/mailList");
		return mv;
	}

}
