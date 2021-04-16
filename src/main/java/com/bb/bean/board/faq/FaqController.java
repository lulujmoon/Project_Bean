package com.bb.bean.board.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.board.BoardDTO;
import com.bb.bean.util.Pager;

@Controller
@RequestMapping("/faq/**")
public class FaqController {
	
	@Autowired
	private FaqService faqService;

	@RequestMapping("faqList")
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar=faqService.getList(pager);
		mv.addObject("list",ar);
		mv.setViewName("faq/faqList");
		mv.addObject("pager",pager);
		return mv;
	}
	
	@RequestMapping("faqInsert")
	public void setInsert()throws Exception{
		
	}
	
	@PostMapping("faqInsert")
	public ModelAndView setInsert(BoardDTO boardDTO,MultipartFile [] files)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =faqService.setInsert(boardDTO,files);
		mv.setViewName("redirect:./faqList");
		return mv;
	}
	
	@GetMapping("faqUpdate")
	public ModelAndView setUpdate(ModelAndView mv,BoardDTO boardDTO)throws Exception{
		boardDTO=faqService.getSelect(boardDTO);
		mv.addObject("dto",boardDTO);
		mv.setViewName("faq/faqUpdate");
		return mv;
	}
	
	@PostMapping("faqUpdate")
	public ModelAndView setUpdate(BoardDTO boardDTO)throws Exception{
		ModelAndView mv = new ModelAndView(); 
		int result = faqService.setUpdate(boardDTO);
		mv.setViewName("redirect:./faqList");
		return mv;
	}
	
}
