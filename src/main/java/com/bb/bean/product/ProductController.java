package com.bb.bean.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	public void getList(ProductDTO productDTO) throws Exception {
		List<ProductDTO> li = productService.getList(productDTO);
	}
}