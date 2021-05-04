package com.bb.bean.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bb.bean.product.ProductDTO;
import com.bb.bean.product.ProductService;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("adminmenu")
	public void adminList()throws Exception {
	}
	
	@GetMapping("productManage")
	public void productManage(ProductDTO productDTO, Model model) throws Exception {
		List<ProductDTO> list = productService.getList(productDTO);
		model.addAttribute("list", list);
	}

}
