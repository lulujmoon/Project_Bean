package com.bb.bean.board.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.board.BoardDTO;
import com.bb.bean.board.BoardService;

@Service
public class FaqService implements BoardService{
	
	@Autowired
	private FaqDAO FaqDAO;

	@Override
	public List<BoardDTO> getList() throws Exception {
		return null;
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return null;
	}

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		return 0;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return 0;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return 0;
	}

}
