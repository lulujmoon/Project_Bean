package com.bb.bean.mail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	
	@Autowired
	private MailDAO mailDAO;
	
	public List<MailDTO> getList()throws Exception{
		return mailDAO.getList();
	}

}
