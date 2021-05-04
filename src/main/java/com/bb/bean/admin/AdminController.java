package com.bb.bean.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@GetMapping("adminmenu")
	public void adminList()throws Exception {
	}


}
