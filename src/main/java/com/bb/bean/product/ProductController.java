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

import com.bb.bean.util.FileManager;

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
		model.addAttribute("product", productDTO);
	}
	
	
	/*productInsert*/
	
	@GetMapping("productInsert")
	public void setInsert() throws Exception {}
	
	@PostMapping("productInsert")
	public String setInsert(ProductDTO productDTO, MultipartFile file) throws Exception {
		productDTO = productService.setInsert(productDTO, file);
		
		return "redirect:./optionManage?productNum="+productDTO.getProductNum();
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
	
	@PostMapping("summerFileDelete")
	public ModelAndView summerFileDelete(String fileName) throws Exception {
		ModelAndView mv = new ModelAndView();
		boolean result = productService.summerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	/*productUpdate*/
	
	@GetMapping("productUpdate")
	public void setUpdate(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.getSelect(productDTO);
		model.addAttribute("product", productDTO);
	}
	
	@PostMapping("productUpdate")
	public String setUpdate(ProductDTO productDTO, MultipartFile file) throws Exception {
		productService.setUpdate(productDTO, file);
		productDTO = productService.getSelect(productDTO);
		return "redirect:./productList";
	}
	
	
	@GetMapping("productDelete")
	public String setDelete(ProductDTO productDTO) throws Exception {
		productService.setDelete(productDTO);
		return "redirect:./productList";
	}
	
	
	
	/* Options */
	
	@GetMapping("optionManage")
	public void setOptionsManage(ProductDTO productDTO, Model model) throws Exception {
		List<OptionsDTO> li = productService.getOptionList(productDTO);
		productDTO = productService.getSelect(productDTO);
		model.addAttribute("list", li);
		model.addAttribute("product", productDTO);
	}
	
	@PostMapping("optionInsert")
	public String setOptionsInsert(OptionsDTO optionsDTO) throws Exception {
		productService.setOptionInsert(optionsDTO);
		return "redirect:./optionManage?productNum="+optionsDTO.getProductNum();
	}
	
	@PostMapping("optionUpdate")
	public ModelAndView setOptionsUpdate(OptionsDTO optionsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = productService.setOptionUpdate(optionsDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("optionDelete")
	public ModelAndView setOptionDelete(OptionsDTO optionsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = productService.setOptionDelete(optionsDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	
}