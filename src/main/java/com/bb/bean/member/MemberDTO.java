package com.bb.bean.member;

import java.sql.Date;

import com.bb.bean.orderDetails.OrderDetailsDTO;
import com.bb.bean.orders.OrdersDTO;
import com.bb.bean.product.ProductDTO;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private Date birthday;
	private String nickname;
	private char gender;	// 1: 남, 2: 여
	private long point;
	private String tel;
	private long postcode;
	private String addr;
	private String addr2;
	private char authority; // 1: 관리자, 2: 일반회원

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public long getPoint() {
		return point;
	}
	public void setPoint(long point) {
		this.point = point;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public long getPostcode() {
		return postcode;
	}
	public void setPostcode(long postcode) {
		this.postcode = postcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public char getAuthority() {
		return authority;
	}
	public void setAuthority(char authority) {
		this.authority = authority;
	}

}
