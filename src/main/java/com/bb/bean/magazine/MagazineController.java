package com.bb.bean.magazine;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/magazine/**")
public class MagazineController {
	
	@Autowired
	private MagazineService magazineService;
	
	@GetMapping("magazineList")
	public void MagazineList()throws Exception{		
	}
	
	@GetMapping("magazineInsert")
	public void MagazineInsert()throws Exception{
		
	}

	@PostMapping("magazineInsert")
	public ModelAndView MagazineInsert(MagazineDTO magazineDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = magazineService.magazineInsert(magazineDTO);
		
		mv.setViewName("redirect:./magazineList");
		
		return mv;
		
	}

}
