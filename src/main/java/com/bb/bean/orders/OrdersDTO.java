package com.bb.bean.orders;

import java.sql.Date;

public class OrdersDTO {
	
	private long orderNum;
	private String id;
	private String orderName;
	private Date orderDate;
	private long amount;
	private String payState;
	private String payMethod;
	private String buyerName;
	private String buyerTel;
	private long buyerPostcode;
	private String buyerAddr;
	private String buyerAddr2;
	private String message;
	
	public long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(long orderNum) {
		this.orderNum = orderNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public String getPayState() {
		return payState;
	}
	public void setPayState(String payState) {
		this.payState = payState;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public String getBuyerTel() {
		return buyerTel;
	}
	public void setBuyerTel(String buyerTel) {
		this.buyerTel = buyerTel;
	}
	public long getBuyerPostcode() {
		return buyerPostcode;
	}
	public void setBuyerPostcode(long buyerPostcode) {
		this.buyerPostcode = buyerPostcode;
	}
	public String getBuyerAddr() {
		return buyerAddr;
	}
	public void setBuyerAddr(String buyerAddr) {
		this.buyerAddr = buyerAddr;
	}
	public String getBuyerAddr2() {
		return buyerAddr2;
	}
	public void setBuyerAddr2(String buyerAddr2) {
		this.buyerAddr2 = buyerAddr2;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	
}
