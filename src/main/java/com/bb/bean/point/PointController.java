package com.bb.bean.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PointController {

	@Autowired
	PointService pointService;
	
	public ModelAndView pointList(PointDTO pointDTO) throws Exception {
		List<PointDTO> list = pointService.getList(pointDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("경로지정해주세여");
		return mv;
	}
}
