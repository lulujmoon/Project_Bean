package com.bb.bean.board.faq;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bb.bean.board.BoardDAO;
import com.bb.bean.board.BoardDTO;

@Repository
public class FaqDAO implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.bb.bean.faq.FaqDAO.";
	
	@Override
	public List<BoardDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect");
	}
	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert");
	}
	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate");
	}
	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete");
	}
	
	
	

}
