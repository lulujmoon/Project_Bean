package com.bb.bean.board.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.board.BoardDTO;
import com.bb.bean.board.BoardService;
import com.bb.bean.util.Pager;

@Service
public class FaqService implements BoardService{
	
	@Autowired
	private FaqDAO FaqDAO;

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		long totalCount = FaqDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		return FaqDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return FaqDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		return FaqDAO.setInsert(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return FaqDAO.setUpdate(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return FaqDAO.setDelete(boardDTO);
	}

}
