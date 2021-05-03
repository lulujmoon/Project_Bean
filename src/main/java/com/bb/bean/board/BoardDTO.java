package com.bb.bean.board;

import java.util.List;

public class BoardDTO {
	
	private long num;
	private String title;
	private String contents;
	private String category;
	private String writer;
	private long con;
	
	public long getCon() {
		return con;
	}
	public void setCon(long con) {
		this.con = con;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
