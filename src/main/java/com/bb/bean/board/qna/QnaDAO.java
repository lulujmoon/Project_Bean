package com.bb.bean.board.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bb.bean.board.BoardDAO;
import com.bb.bean.board.BoardDTO;
import com.bb.bean.board.BoardFileDTO;
import com.bb.bean.util.Pager;

@Repository
public class QnaDAO implements BoardDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.bb.bean.board.qna.QnaDAO.";

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}
	@Override
	public long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalCount",pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect",boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert",boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate",boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete",boardDTO);
	}
	
	public int setHitUpdate(BoardDTO boardDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setHitUpdate",boardDTO);
	}
	
	public int setReply(QnaDTO qnaDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setReply",qnaDTO);
	}
	
	public int setReplyUpdate(QnaDTO qnaDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setReplyUpdate",qnaDTO);
	}
	
	public int setStatusUpdate(QnaDTO qnaDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setStatusUpdate",qnaDTO);
	}

	public int setFileInsert(BoardFileDTO boardFileDTO)throws Exception{
			return sqlSession.insert(NAMESPACE+"setFileInsert", boardFileDTO);
	}
	

}
