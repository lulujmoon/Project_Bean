package com.bb.bean.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	
	@GetMapping("productList")
	public void getList(ProductDTO productDTO, Model model) throws Exception {
		List<ProductDTO> li = productService.getList(productDTO);
		model.addAttribute("list", li);
	}
	
	@GetMapping("productSelect")
	public void getSelect(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.getSelect(productDTO);
		model.addAttribute("dto", productDTO);
	}
	
	
	@GetMapping("productInsert")
	public void setInsert() throws Exception {}
	
	@PostMapping("productInsert")
	public String setInsert(ProductDTO productDTO) throws Exception {
		int result = productService.setInsert(productDTO);
		return "redirect:./productList";
	}
	
	
	@GetMapping("productUpdate")
	public void setUpdate(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.getSelect(productDTO);
		model.addAttribute("dto", productDTO);
	}
	
	@PostMapping("productUpdate")
	public String setUpdate(ProductDTO productDTO) throws Exception {
		int result = productService.setUpdate(productDTO);
		return "redirect:./productSelect?num="+productDTO.getNum();
	}
	
	
	@GetMapping("productDelete")
	public String setDelete(ProductDTO productDTO) throws Exception {
		int result = productService.setDelete(productDTO);
		return "redirect:./productList";
	}
}