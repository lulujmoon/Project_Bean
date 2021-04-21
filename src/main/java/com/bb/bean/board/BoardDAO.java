package com.bb.bean.board;

import java.util.List;

import com.bb.bean.util.Pager;

public interface BoardDAO {
	
	//list
	public List<BoardDTO> getList(Pager pager)throws Exception;
	
	//전체글갯수
	public long getTotalCount(Pager pager)throws Exception;
	
	//select
	public BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	//insert
	public int setInsert(BoardDTO boardDTO)throws Exception;
	
	//update
	public int setUpdate(BoardDTO boardDTO)throws Exception;
	
	//delete
	public int setDelete(BoardDTO boardDTO)throws Exception;

}
