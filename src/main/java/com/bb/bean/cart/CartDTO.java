package com.bb.bean.cart;

import java.util.List;

import com.bb.bean.product.OptionsDTO;
import com.bb.bean.product.ProductDTO;

public class CartDTO {
	
	private long itemNum;
	private String cartID;
	private long optionNum;
	private long quantity;
	private long finalPrice;
	private String grind;
	private OptionsDTO option;
	private ProductDTO product;
	
	

	public OptionsDTO getOption() {
		return option;
	}
	public void setOption(OptionsDTO option) {
		this.option = option;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
	public long getItemNum() {
		return itemNum;
	}
	public void setItemNum(long itemNum) {
		this.itemNum = itemNum;
	}
	public String getCartID() {
		return cartID;
	}
	public void setCartID(String cartID) {
		this.cartID = cartID;
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

	
}
