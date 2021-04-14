package com.bb.bean.board.faq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class FaqController {
	
	@Autowired
	private FaqService faqService;

}
