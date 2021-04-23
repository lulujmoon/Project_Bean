package com.bb.bean.magazine;

import java.util.List;

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
	public ModelAndView MagazineList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MagazineDTO> ar =magazineService.magazineList();
		mv.addObject("list",ar);
		mv.setViewName("magazine/magazineList");
		return mv;
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
	
	@GetMapping("magazineSelect")
	public ModelAndView magazineSelect(MagazineDTO magazineDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		magazineDTO =magazineService.magazineSelect(magazineDTO);
		mv.addObject("dto",magazineDTO);
		mv.setViewName("magazine/magazineSelect");
		return mv;
	}

}
