package com.bb.bean.product;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;

public class ProductDAOTest extends SampleTest{

	@Autowired
	private ProductDAO productDAO;
	
	@Test
	public void test() throws Exception  {
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductNum(1);
		productDTO = productDAO.getSelect(productDTO);
		List<OptionsDTO> ar = productDTO.getOptions();
		System.out.println(ar.size());
		assertNotEquals(0, ar.size());
	}

}
