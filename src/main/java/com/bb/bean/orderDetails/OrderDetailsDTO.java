package com.bb.bean.orderDetails;

import com.bb.bean.product.OptionsDTO;
import com.bb.bean.product.ProductDTO;

public class OrderDetailsDTO {
	
	private long detailNum;
	private String orderUid;
	private long optionNum;
	private long quantity;
	private long finalPrice;
	private String grind;
	private String shippingState;
	private ProductDTO product;
	private OptionsDTO option;
	
	public long getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(long detailNum) {
		this.detailNum = detailNum;
	}
	public String getOrderUid() {
		return orderUid;
	}
	public void setOrderUid(String orderUid) {
		this.orderUid = orderUid;
	}
	public long getOptionNum() {
		return optionNum;
	}
	public void setOptionNum(long optionNum) {
		this.optionNum = optionNum;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}
	public long getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(long finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getGrind() {
		return grind;
	}
	public void setGrind(String grind) {
		this.grind = grind;
	}
	public String getShippingState() {
		return shippingState;
	}
	public void setShippingState(String shippingState) {
		this.shippingState = shippingState;
	}
	
	
}
