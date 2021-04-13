package com.bb.bean.product;

public class ProductDTO {

	private long num;
	private String name;
	private String category;
	private String summary;
	private String info;
	private String cartInfo;
	
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		if(this.category==null) {
			this.category = "coffee";
		}
		return category;
	}
	public void setCategory(String category) {
		if(category==null) {
			category = "coffee";
		}
		this.category = category;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getCartInfo() {
		return cartInfo;
	}
	public void setCartInfo(String cartInfo) {
		this.cartInfo = cartInfo;
	}
	
	
}
