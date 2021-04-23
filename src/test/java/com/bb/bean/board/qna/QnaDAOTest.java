package com.bb.bean.board.qna;

import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;
import com.bb.bean.board.BoardDTO;

public class QnaDAOTest extends SampleTest {
	
	@Autowired
	private QnaDAO qnaDAO;
	
//	@Test
//	public void getListTest()throws Exception{
//		List<BoardDTO> ar = qnaDAO.getList();
//		assertNotEquals(0, ar.size());
//	}
	
//	@Test
//	public void getSelectTest()throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setNum(2);
//		boardDTO = qnaDAO.getSelect(boardDTO);
//		assertNotNull(boardDTO);
//	}
	
//	@Test
//	public void setInsertTest()throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setTitle("qnaInsertTest");
//		boardDTO.setContents("qnaInsertTestCC");
//		boardDTO.setCategory("배송문의");
//		boardDTO.setWriter("id1");
//		int result = qnaDAO.setInsert(boardDTO);
//		
//		assertNotEquals(0, result);
//	}
	
//	@Test
//	public void setUpdateTest() throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setNum(2);
//		boardDTO.setTitle("update");
//		boardDTO.setContents("updateTest");
//		boardDTO.setCategory("주문문의");
//		int result = qnaDAO.setUpdate(boardDTO);
//		assertNotEquals(0, result);
//		
//	}
	
	@Test
	public void setDeleteTest() throws Exception{
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setNum(7);
		int result = qnaDAO.setDelete(boardDTO);
		assertNotEquals(0, result);
		
	}
	
	
}
