package com.bb.bean.location;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/location/**")
public class LocationController {
	
	//service 객체 생성
	@Autowired
	private LocationService locationService;
	
	//리스트 가져오는 메서드
	@RequestMapping("locationList")
	public ModelAndView getList()throws Exception{
	
		List<LocationDTO> ar = locationService.getList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ar); 
		mv.setViewName("location/locationList"); 
		return mv;
	}
	
	@RequestMapping("locationSelect")
	public ModelAndView getSelect(LocationDTO locationDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		locationDTO = locationService.getSelect(locationDTO);
		mv.addObject("dto", locationDTO);
		mv.setViewName("location/locationSelect");
		return mv;
	}
		
}
