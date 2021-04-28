package com.bb.bean.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PointController {

	@Autowired
	PointService pointService;
	
	
	@GetMapping("member/memberPoint")
	public void pointList(PointDTO pointDTO, Model model) throws Exception {
		List<PointDTO> point = pointService.getList(pointDTO);

		model.addAttribute("point", point);
	}
}
