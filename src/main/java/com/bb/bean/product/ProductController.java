package com.bb.bean.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	
	
	/*productInsert*/
	
	@GetMapping("productInsert")
	public void setInsert() throws Exception {}
	
	@PostMapping("productInsert")
	public String setInsert(ProductDTO productDTO) throws Exception {
		int result = productService.setInsert(productDTO);
		return "redirect:./productList";
	}
	
	@PostMapping("summerFileUpload")
	public ModelAndView summerFileUpload(MultipartFile file) throws Exception {
		ModelAndView mv = new ModelAndView();
		String fileName = productService.summerFileUpload(file);
		fileName = "../resources/upload/productContents/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	/*productUpdate*/
	
	@GetMapping("productUpdate")
	public void setUpdate(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.getSelect(productDTO);
		model.addAttribute("dto", productDTO);
	}
	
	@PostMapping("productUpdate")
	public String setUpdate(ProductDTO productDTO) throws Exception {
		int result = productService.setUpdate(productDTO);
		return "redirect:./productSelect?num="+productDTO.getProductNum();
	}
	
	
	@GetMapping("productDelete")
	public String setDelete(ProductDTO productDTO) throws Exception {
		int result = productService.setDelete(productDTO);
		return "redirect:./productList";
	}
}