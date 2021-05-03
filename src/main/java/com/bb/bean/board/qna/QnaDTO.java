package com.bb.bean.board.qna;

import java.sql.Date;
import java.util.List;

import com.bb.bean.board.BoardDTO;
import com.bb.bean.board.BoardFileDTO;

public class QnaDTO extends BoardDTO {
	
	private String status;
	private Date regDate;
	private long hit;
	private long ref;
	private long step;
	private long depth;
	
	private BoardFileDTO boardfiles;
	private List<BoardFileDTO> Lboardfiles;
	
	public List<BoardFileDTO> getLboardfiles() {
		return Lboardfiles;
	}
	public void setLboardfiles(List<BoardFileDTO> lboardfiles) {
		Lboardfiles = lboardfiles;
	}
	public BoardFileDTO getBoardfiles() {
		return boardfiles;
	}
	public void setBoardfiles(BoardFileDTO boardfiles) {
		this.boardfiles = boardfiles;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public long getHit() {
		return hit;
	}
	public void setHit(long hit) {
		this.hit = hit;
	}
	public long getRef() {
		return ref;
	}
	public void setRef(long ref) {
		this.ref = ref;
	}
	public long getStep() {
		return step;
	}
	public void setStep(long step) {
		this.step = step;
	}
	public long getDepth() {
		return depth;
	}
	public void setDepth(long depth) {
		this.depth = depth;
	}

}
