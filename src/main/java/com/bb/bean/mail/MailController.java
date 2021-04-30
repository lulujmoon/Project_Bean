package com.bb.bean.mail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/mail/**")
public class MailController {
	
	@Autowired
	private MailService mailService;
	
	@GetMapping("mailList")
	public ModelAndView getList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MailDTO> ar = mailService.getList();
		mv.addObject("list",ar);
		mv.setViewName("mail/mailList");
		return mv;
	}
	
	@GetMapping("sendMail")
	public void sendMail()throws Exception{
		
	}

}
