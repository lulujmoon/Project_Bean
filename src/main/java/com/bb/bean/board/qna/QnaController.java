package com.bb.bean.board.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.board.BoardDTO;
import com.bb.bean.board.BoardFileDTO;
import com.bb.bean.member.MemberDTO;
import com.bb.bean.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Autowired
	private QnaService qnaService;
	@Autowired
	private HttpSession session;

//	@GetMapping("qnaPassword") 
//	public ModelAndView setPassword(BoardDTO boardDTO)throws Exception{ 
//		ModelAndView mv = new ModelAndView();
//		boardDTO = qnaService.getSelect(boardDTO);
//		mv.addObject("dto",boardDTO);
//		mv.setViewName("qna/qnaPassword");
//		return mv;
//	}
//	
//	@PostMapping("qnaPassword") public ModelAndView setPassword(ModelAndView mv,String pw,BoardDTO boardDTO,long num,String writer,long ref) throws Exception{
//		MemberDTO memberDTO = new MemberDTO();
//		memberDTO = (MemberDTO)session.getAttribute("member");
//		String mpw = memberDTO.getPw();
//		String mid = memberDTO.getId();
//		
//		if((pw.equals(mpw)&&mid.equals(writer))||mid.equals("admin")){
//			mv.addObject("num",num);
//			
//			mv.setViewName("redirect:./qnaSelect?num={num}");
//			/*
//			 * result=true; mv.addObject("result",result);
//			 * mv.setViewName("common/ajaxResult");
//			 */
//		}else {
//			mv.addObject("num",num);
//			mv.setViewName("redirect:./qnaPassword?num={num}");
//		}	
//
//		return mv;
//	}
//			
//	@GetMapping("qnaList")
//	public ModelAndView getList(Pager pager) throws Exception {
//		ModelAndView mv = new ModelAndView();
//		List<BoardDTO> ar = qnaService.getList(pager);
//		mv.addObject("list", ar);
//		mv.setViewName("qna/qnaList");
//		mv.addObject("pager", pager);
//		return mv;
//	}

	@GetMapping("memberQna")
	public ModelAndView memberQna(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar = qnaService.memberQna(boardDTO);
		mv.addObject("list", ar);
		mv.setViewName("member/memberQna");
		return mv;
	}

	@GetMapping("qnaSelect")
	public ModelAndView getSelect(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		boardDTO = qnaService.getSelect(boardDTO);
		mv.addObject("dto", boardDTO);
		mv.setViewName("qna/qnaSelect");
		return mv;
	}

	@GetMapping("qnaInsert")
	public void setInsert() throws Exception {

	}

	@PostMapping("qnaInsert")
	public ModelAndView setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setInsert(boardDTO, files);
		mv.setViewName("redirect:./qnaList");

		return mv;
	}

	@GetMapping("qnaUpdate")
	public ModelAndView setUpdate(ModelAndView mv, BoardDTO boardDTO) throws Exception {
		boardDTO = qnaService.getSelect(boardDTO);
		mv.addObject("dto", boardDTO);
		mv.setViewName("qna/qnaUpdate");
		return mv;
	}

	@PostMapping("qnaUpdate")
	public ModelAndView setUpdate(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setUpdate(boardDTO);
		mv.setViewName("redirect:./qnaList");
		return mv;
	}

	@GetMapping("qnaDelete")
	public String setDelete(BoardDTO boardDTO) throws Exception {
		int result = qnaService.setDelete(boardDTO);

		return "redirect:./qnaList";
	}

	@GetMapping("qnaReply")
	public ModelAndView setReply() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("qna/qnaReply");

		return mv;
	}

	@PostMapping("qnaReply")
	public ModelAndView setReply(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setReply(qnaDTO);
		mv.setViewName("redirect:./qnaList");
		return mv;
	}

	@PostMapping("summerFileUpload")
	public ModelAndView summerFileUpload(MultipartFile file) throws Exception {
		ModelAndView mv = new ModelAndView();
		String fileName = qnaService.summerFileUpload(file);
		fileName = "../resources/upload/qna/" + fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		return mv;
	}

	@PostMapping("summerFileDelete")
	public ModelAndView summerFileDelete(String fileName) throws Exception {
		ModelAndView mv = new ModelAndView();
		boolean result = qnaService.summerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}

}
