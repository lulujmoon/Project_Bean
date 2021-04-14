package com.bb.bean.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.board.BoardDTO;

@Controller
@RequestMapping("/qna/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("qnaList")
	public ModelAndView getList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar= qnaService.getList();
		mv.addObject("list",ar);
		mv.setViewName("qna/qnaList");
		return mv;
	}
	
	@GetMapping("qnaSelect")
	public ModelAndView getSelect(BoardDTO boardDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardDTO =qnaService.getSelect(boardDTO);
		mv.addObject("dto",boardDTO);
		mv.setViewName("qna/qnaSelect");
		return mv;
		
	}
	
}
