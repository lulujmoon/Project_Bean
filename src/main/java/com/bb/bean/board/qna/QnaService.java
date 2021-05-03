package com.bb.bean.board.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bb.bean.board.BoardDTO;
import com.bb.bean.board.BoardFileDTO;
import com.bb.bean.board.BoardService;
import com.bb.bean.member.MemberDTO;
import com.bb.bean.util.FileManager;
import com.bb.bean.util.Pager;

@Service
public class QnaService implements BoardService {
	
	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private FileManager fileManager;
	@Autowired
	private HttpSession session;

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		long totalCount = qnaDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		
		return qnaDAO.getList(pager);
	}
	
	public List<BoardDTO> memberQna(BoardDTO boardDTO) throws Exception{	
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO=(MemberDTO)session.getAttribute("member");
		boardDTO.setWriter(memberDTO.getId());
	
		return qnaDAO.memberQna(boardDTO);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		int result = qnaDAO.setHitUpdate(boardDTO);
		return qnaDAO.getSelect(boardDTO);
	}
	
	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile [] files) throws Exception {
		
		int result= qnaDAO.setInsert(boardDTO);
		
		for(MultipartFile mf : files) {
			BoardFileDTO boardFileDTO = new BoardFileDTO();
			String fileName = fileManager.save("qna", mf, session);
			
			boardFileDTO.setNum(boardDTO.getNum());
			boardFileDTO.setFileName(fileName);
			boardFileDTO.setOrigineName(mf.getOriginalFilename());
			
			qnaDAO.setFileInsert(boardFileDTO);
		}
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return qnaDAO.setUpdate(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return qnaDAO.setDelete(boardDTO);
	}
	
	public int setReply(QnaDTO qnaDTO) throws Exception{
		
		BoardDTO boardDTO = qnaDAO.getSelect(qnaDTO);
		QnaDTO parent = (QnaDTO)boardDTO;
		
		qnaDTO.setRef(parent.getRef());
		qnaDTO.setStep(parent.getStep()+1);
		qnaDTO.setDepth(parent.getDepth()+1);
		qnaDTO.setStatus("답변완료");
		qnaDTO.setCon(parent.getCon());
	
		int result = qnaDAO.setReplyUpdate(parent);
		result = qnaDAO.setReply(qnaDTO);
		result = qnaDAO.setStatusUpdate(qnaDTO);
		result=qnaDAO.setConUpdate(qnaDTO);
		
		return result;
	}
	
	public String summerFileUpload(MultipartFile multipartFile) throws Exception {
		return fileManager.save("qna", multipartFile, session);
	}
	
	public boolean summerFileDelete(String fileName) throws Exception {
		return fileManager.delete("qna", fileName, session);
	}
	

}
