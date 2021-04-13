package com.bb.bean.options;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;

public class OptionsTest extends SampleTest {

	@Autowired
	private OptionsDAO optionsDAO;
	
	
	@Test
	public void test() throws Exception {
		OptionsDTO optionsDTO = new OptionsDTO();
		optionsDTO.setType("250g");
		optionsDTO.setProductNum(3);
		optionsDTO.setGrind(null);
		optionsDTO.setPrice(10000);
		optionsDTO.setDiscountRate(0);
		optionsDTO.setStock(10);
		int result = optionsDAO.setInsert(optionsDTO);
		assertNotEquals(0, result);
	}

}
