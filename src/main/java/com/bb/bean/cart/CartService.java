package com.bb.bean.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.bean.product.OptionsDTO;
import com.bb.bean.product.ProductDAO;

@Service
public class CartService {

	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private CartService cartService;
	
	public List<CartDTO> getList(CartDTO cartDTO) throws Exception {
		return cartDAO.getList(cartDTO);
	}
	
	public CartDTO setFinalPrice(CartDTO cartDTO) throws Exception {
		OptionsDTO optionsDTO = new OptionsDTO();
		optionsDTO.setOptionNum(cartDTO.getOptionNum());
		optionsDTO = productDAO.getOptionsSelect(optionsDTO);
		long finalPrice = (long)(optionsDTO.getPrice()*(1-optionsDTO.getDiscountRate()));
		
		cartDTO.setfPrice(finalPrice*cartDTO.getQuantity());
		return cartDTO;
	}
	
	public long getTotalPrice(CartDTO cartDTO) throws Exception {
		return cartDAO.getTotalPrice(cartDTO);
	}

	public int setInsert(CartDTO cartDTO) throws Exception {
		cartDTO = cartService.setFinalPrice(cartDTO);
		return cartDAO.setInsert(cartDTO);
	}
	
	public int setUpdate(CartDTO cartDTO) throws Exception {
		CartDTO cartDTO2 = new CartDTO();
		cartDTO2.setItemNum(cartDTO.getItemNum());
		cartDTO2 = cartDAO.getSelect(cartDTO2);
		cartDTO2.setQuantity(cartDTO.getQuantity());
		
		cartDTO2 = cartService.setFinalPrice(cartDTO2);
		cartDTO.setfPrice(cartDTO2.getfPrice());
		return cartDAO.setUpdate(cartDTO);
	}
	
	//CartDTO를 삭제하고 반환
	public CartDTO setDelete(CartDTO cartDTO) throws Exception {
		cartDTO = cartDAO.getSelect(cartDTO);
		cartDAO.setDelete(cartDTO);
		return cartDTO;
	}
}