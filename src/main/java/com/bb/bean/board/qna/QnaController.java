package com.bb.bean.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.board.BoardDTO;

@Controller
@RequestMapping("/qna/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("qnaList")
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar= qnaService.getList();
		mv.addObject("list",ar);
		mv.addObject("pager",pager);
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
	
	@GetMapping("qnaInsert")
	public void setInsert()throws Exception{
		
	}
	
	@PostMapping("qnaInsert")
	public ModelAndView setInsert(BoardDTO boardDTO)throws Exception{
		ModelAndView mv = new ModelAndView(); 
		int result = qnaService.setInsert(boardDTO);
		mv.setViewName("redirect:./qnaList");
		
		return mv;
	}
	
	@GetMapping("qnaUpdate")
	public ModelAndView setUpdate(ModelAndView mv,BoardDTO boardDTO)throws Exception{
		boardDTO=qnaService.getSelect(boardDTO);
		mv.addObject("dto",boardDTO);
		mv.setViewName("qna/qnaUpdate");
		return mv;
	}
	
	@PostMapping("qnaUpdate")
	public ModelAndView setUpdate(BoardDTO boardDTO)throws Exception{
		ModelAndView mv = new ModelAndView(); 
		int result = qnaService.setUpdate(boardDTO);
		mv.setViewName("redirect:./qnaList");
		return mv;
	}
	
	@GetMapping("qnaDelete")
	public String setDelete(BoardDTO boardDTO)throws Exception{
		int result = qnaService.setDelete(boardDTO);
	
		return "redirect:./qnaList";
	}
	
	@GetMapping("qnaReply")
	public ModelAndView setReply()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("qna/qnaReply");
	
		return mv;
	}
	
	@PostMapping("qnaReply")
	public ModelAndView setReply(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setReply(qnaDTO);
		mv.setViewName("redirect:./qnaList");
		return mv;
	}
			
	}
	

