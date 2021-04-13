package com.bb.bean.options;

public class OptionsDTO {
	
	private long optionNum;
	private long productNum;
	private String type;
	private String grind;
	private long price;
	private double discountRate;
	private long stock;
	

	public long getOptionNum() {
		return optionNum;
	}
	public void setOptionNum(long optionNum) {
		this.optionNum = optionNum;
	}
	public long getProductNum() {
		return productNum;
	}
	public void setProductNum(long productNum) {
		this.productNum = productNum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGrind() {
		return grind;
	}
	public void setGrind(String grind) {
		this.grind = grind;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public double getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}
	public long getStock() {
		return stock;
	}
	public void setStock(long stock) {
		this.stock = stock;
	}
	
	

}
