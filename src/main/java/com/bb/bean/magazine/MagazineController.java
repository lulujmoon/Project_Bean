package com.bb.bean.magazine;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/magazine/**")
public class MagazineController {
	
	@GetMapping("magazineList")
	public void MagazineList()throws Exception{
		
	}

}
