package com.bb.bean.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.member.MemberDTO;
import com.bb.bean.member.MemberService;
import com.bb.bean.product.ProductDTO;
import com.bb.bean.product.ProductService;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	MemberService memberService;
	
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

}
