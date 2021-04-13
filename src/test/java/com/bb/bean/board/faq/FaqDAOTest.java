package com.bb.bean.board.faq;

import static org.junit.Assert.assertNotEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;
import com.bb.bean.board.BoardDTO;

public class FaqDAOTest extends SampleTest {
	
	@Autowired
	private FaqDAO faqDAO;
	
	@Test
	public void getListTest()throws Exception{
		List<BoardDTO> ar = faqDAO.getList();
		assertNotEquals(0, ar.size());
	}

}
