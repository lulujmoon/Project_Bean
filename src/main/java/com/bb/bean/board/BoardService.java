package com.bb.bean.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.bb.bean.util.Pager;

public interface BoardService {
	
	//list
	public List<BoardDTO> getList(Pager pager)throws Exception;
	
	//select
	public BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	//insert
	public int setInsert(BoardDTO boardDTO, MultipartFile [] files)throws Exception;
	
	//update
	public int setUpdate(BoardDTO boardDTO)throws Exception;
	
	//delete
	public int setDelete(BoardDTO boardDTO)throws Exception;

}
