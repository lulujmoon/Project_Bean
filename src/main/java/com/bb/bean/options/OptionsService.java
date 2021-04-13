package com.bb.bean.options;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OptionsService {

	@Autowired
	private OptionsDAO optionsDAO;
	
	public int setInsert(OptionsDTO optionsDTO) throws Exception {
		return optionsDAO.setInsert(optionsDTO);
	}
	
	public int setUpdate(OptionsDTO optionsDTO) throws Exception {
		return optionsDAO.setUpdate(optionsDTO);
	}
	
	public int setDelete(OptionsDTO optionsDTO) throws Exception {
		return optionsDAO.setDelete(optionsDTO);
	}

}
