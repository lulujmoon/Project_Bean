package com.bb.bean.product;

import java.util.List;

public class ProductDTO {

	private long productNum;
	private String name;
	private String category;
	private String subtitle;
	private String includes;
	private String contents;
	private String details;
	private String cartInfo;
	private String grinds;
	private List<OptionsDTO> options;
	private ProductFileDTO file;
	
	public long getProductNum() {
		return productNum;
	}
	public void setProductNum(long productNum) {
		this.productNum = productNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getIncludes() {
		return includes;
	}
	public void setIncludes(String includes) {
		this.includes = includes;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getCartInfo() {
		return cartInfo;
	}
	public void setCartInfo(String cartInfo) {
		this.cartInfo = cartInfo;
	}
	public String getGrinds() {
		return grinds;
	}
	public void setGrinds(String grinds) {
		this.grinds = grinds;
	}
	public List<OptionsDTO> getOptions() {
		return options;
	}
	public void setOptions(List<OptionsDTO> options) {
		this.options = options;
	}
	public ProductFileDTO getFile() {
		return file;
	}
	public void setFile(ProductFileDTO file) {
		this.file = file;
	}

	
	
}
