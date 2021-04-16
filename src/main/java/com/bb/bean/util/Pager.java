package com.bb.bean.util;

public class Pager {
	
	private long perPage;
	private long perBlock;
	private long curPage;
	private long startRow;
	private long lastRow;
	
	public Pager() {
		
		this.perPage=10;
		this.perBlock=5;
		this.curPage=1;
	}


	//rownum 계산
	public void makeRow() {
		this.startRow = (this.curPage-1)*perPage+1;
		this.lastRow = this.curPage*this.perPage;
	}
	
	//paging 계산
	private long totalPage;
	private long startNum;
	private long lastNum;
	private boolean pre;
	private boolean next;
	
	public void makeNum(long totalCount) {
		// 전체글의 갯수로 전체 페이지갯수
		this.totalPage = totalCount/this.perPage;
		if(totalCount%this.perPage !=0) {
			totalPage++;
		}	
		//전체 페이지 전체 block 수
		long totalBlock = this.totalPage/this.perBlock;
		if(this.totalPage%this.perBlock!=0) {
			totalBlock++;
		}
		// curPage를 이용해서 curBlock 구하기
		long curBlock = this.curPage/this.perBlock;
		if(this.curPage%this.perBlock !=0) {
			curBlock++;
		}
		//curBlock으로 startNum, lastNum
		this.startNum = (curBlock-1)*this.perBlock+1;
		this.lastNum = curBlock*this.perBlock;
		
		//curBlock이 totalBlock과 같다면
		if(curBlock == totalBlock) {
			this.lastNum = this.totalPage;
		}
		
		//이전,다음유무
		if(curBlock>1) {
			this.pre = true;		
		}
		if(curBlock != totalBlock) {
			this.next = true;
		}
		
	}


	public long getPerPage() {
		return perPage;
	}


	public void setPerPage(long perPage) {
		this.perPage = perPage;
	}


	public long getPerBlock() {
		return perBlock;
	}


	public void setPerBlock(long perBlock) {
		this.perBlock = perBlock;
	}


	public long getCurPage() {
		return curPage;
	}


	public void setCurPage(long curPage) {
		this.curPage = curPage;
	}


	public long getStartRow() {
		return startRow;
	}


	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}


	public long getLastRow() {
		return lastRow;
	}


	public void setLastRow(long lastRow) {
		this.lastRow = lastRow;
	}


	public long getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}


	public long getStartNum() {
		return startNum;
	}


	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}


	public long getLastNum() {
		return lastNum;
	}


	public void setLastNum(long lastNum) {
		this.lastNum = lastNum;
	}


	public boolean isPre() {
		return pre;
	}


	public void setPre(boolean pre) {
		this.pre = pre;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}
	
	//검색
	private String kind;
	private String search;

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search == null) {
			this.search="";
		}
		return search;
	}

	public void setSearch(String search) {
		if(search == null) {
			search="";
		}
		this.search = search;
	}
	
}