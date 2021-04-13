package com.bb.bean.board;

import java.util.List;

public interface BoardDAO {
	
	//list
	public List<BoardDTO> getList()throws Exception;
	
	//select
	public BoardDTO getSelect()throws Exception;
	
	//insert
	public int setInsert()throws Exception;
	
	//update
	public int setUpdate()throws Exception;
	
	//delete
	public int setDelete()throws Exception;

}
