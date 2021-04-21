package com.bb.bean.board.faq;

import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;
import com.bb.bean.board.BoardDTO;

public class FaqDAOTest extends SampleTest {
	
	@Autowired
	private FaqDAO faqDAO;
	
//	@Test
//	public void getListTest()throws Exception{
//		List<BoardDTO> ar = faqDAO.getList();
//		assertNotEquals(0, ar.size());
//	}
	
//	@Test
//	public void getSelectTest()throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setNum(2);
//		boardDTO = faqDAO.getSelect(boardDTO);
//		assertNull(boardDTO);
//	}
	
//	@Test
//	public void setInsertTest()throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setTitle("test2");
//		boardDTO.setContents("testcontents22");
//		boardDTO.setCategory("배송");
//		boardDTO.setWriter("admin");
//		int result = faqDAO.setInsert(boardDTO);
//		
//		assertNotEquals(0, result);
//	}
	
	@Test
	public void setUpdateTest() throws Exception{
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setNum(12);
		boardDTO.setTitle("update");
		boardDTO.setContents("updateTest");
		boardDTO.setCategory("주문문의");
		int result = faqDAO.setUpdate(boardDTO);
		assertNotEquals(0, result);
		
	}
	
//	@Test
//	public void setDeleteTest() throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setNum(2);
//		int result = faqDAO.setDelete(boardDTO);
//		assertNotEquals(0, result);
//		
//	}
	
	
}
