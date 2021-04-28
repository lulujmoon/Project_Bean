package com.bb.bean.point;

import java.sql.Date;

public class PointDTO {

	private long pointNum;
	private String id;
	private Date regDate;
	private String sort;
	private String detail;
	private long savePoint;
	private long usePoint;
	private long restPoint;
	
	public long getPointNum() {
		return pointNum;
	}
	public void setPointNum(long pointNum) {
		this.pointNum = pointNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public long getSavePoint() {
		return savePoint;
	}
	public void setSavePoint(long savePoint) {
		this.savePoint = savePoint;
	}
	public long getUsePoint() {
		return usePoint;
	}
	public void setUsePoint(long usePoint) {
		this.usePoint = usePoint;
	}
	public long getRestPoint() {
		return restPoint;
	}
	public void setRestPoint(long restPoint) {
		this.restPoint = restPoint;
	}
	
	
}
