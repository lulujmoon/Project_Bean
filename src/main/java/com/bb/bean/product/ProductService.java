package com.bb.bean.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	
	public List<ProductDTO> getList(ProductDTO productDTO) throws Exception {
		return productDAO.getList(productDTO);
	}
}
