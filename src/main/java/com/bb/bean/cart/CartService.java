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
	
	
	public String beforeGetList(CartDTO cartDTO) throws Exception {
		List<CartDTO> caList = cartDAO.getList(cartDTO);
		String result = "";
		for(CartDTO ca:caList) {
			boolean notSold = this.getSold(ca);
			if(!notSold) {
				this.setDelete(ca);
				result = "품절된 상품이 삭제되었습니다.";
			}
			
			boolean buyable = this.getBuyable(ca);
			if(notSold&&!buyable) {
				OptionsDTO optionsDTO = new OptionsDTO();
				optionsDTO.setOptionNum(ca.getOptionNum());
				optionsDTO = productDAO.getOptionSelect(optionsDTO);
				
				ca.setQuantity(optionsDTO.getStock());
				this.setUpdate(ca);
			}
		}
		
		return result;
	}
	
	public List<CartDTO> getList(CartDTO cartDTO) throws Exception {
		return cartDAO.getList(cartDTO);
	}
	
	public CartDTO setFinalPrice(CartDTO cartDTO) throws Exception {
		OptionsDTO optionsDTO = new OptionsDTO();
		optionsDTO.setOptionNum(cartDTO.getOptionNum());
		optionsDTO = productDAO.getOptionSelect(optionsDTO);
		long finalPrice = optionsDTO.getAfterPrice();
		cartDTO.setFinalPrice(finalPrice*cartDTO.getQuantity());
		return cartDTO;
	}
	
	public boolean getSold(CartDTO cartDTO) throws Exception {
		OptionsDTO optionsDTO = new OptionsDTO();
		optionsDTO.setOptionNum(cartDTO.getOptionNum());
		optionsDTO = productDAO.getOptionSelect(optionsDTO);
		boolean notSold = false;
		if(optionsDTO.getStock()!=0) {
			notSold = true;
		}
		
		return notSold;
	}
	
	public boolean getBuyable(CartDTO cartDTO) throws Exception {
		OptionsDTO optionsDTO = new OptionsDTO();
		optionsDTO.setOptionNum(cartDTO.getOptionNum());
		optionsDTO = productDAO.getOptionSelect(optionsDTO);
		long stock = optionsDTO.getStock();
		
		boolean buyable = false;
		if(stock>=cartDTO.getQuantity()) {
			buyable = true;
		}
		
		return buyable;
	}
	
	public long getTotalPrice(CartDTO cartDTO) throws Exception {
		return cartDAO.getTotalPrice(cartDTO);
	}

	public String setInsert(CartDTO cartDTO) throws Exception {
		boolean buyable = this.getBuyable(cartDTO);
		String result = "";
		if(buyable) {
			cartDTO = cartService.setFinalPrice(cartDTO);	
			cartDAO.setInsert(cartDTO);
		}else {
			result = "구매 가능 개수를 초과했습니다.";
		}
		return result;
	}
	
	public String setUpdate(CartDTO cartDTO) throws Exception {
		
		CartDTO cartDTO2 = new CartDTO();
		cartDTO2.setItemNum(cartDTO.getItemNum());
		cartDTO2 = cartDAO.getSelect(cartDTO2);
		cartDTO2.setQuantity(cartDTO.getQuantity());
		
		boolean buyable = this.getBuyable(cartDTO2);
		String result = "";
		if(buyable) {
			cartDTO2 = cartService.setFinalPrice(cartDTO2);
			cartDTO.setFinalPrice(cartDTO2.getFinalPrice());
			cartDAO.setUpdate(cartDTO);
		}else {
			result = "구매 가능 개수를 초과했습니다.";
		}
		return result;
	}
	
	public int setCartIDUpdate(String ex, String id) throws Exception {
		//비회원 상태에서 담아둔 리스트 불러오기
		int result = 0;
		CartDTO exDTO = new CartDTO();
		exDTO.setCartID(ex);
		List<CartDTO> exs = cartDAO.getList(exDTO);
		
		for(CartDTO dto:exs) {
			dto.setCartID(id);
			result = cartDAO.setCartIDUpdate(dto);
		}
		
		return result;
	}
	
	//CartDTO를 삭제하고 반환
	public CartDTO setDelete(CartDTO cartDTO) throws Exception {
		cartDTO = cartDAO.getSelect(cartDTO);
		cartDAO.setDelete(cartDTO);
		return cartDTO;
	}
	
	public int setCartIDDelete(CartDTO cartDTO) throws Exception {
		return cartDAO.setCartIDDelete(cartDTO);
	}
	
	public int setFinalPriceUpdate(CartDTO cartDTO) throws Exception {
		int result=0;
		List<CartDTO> caList = cartDAO.getListbyOptionNum(cartDTO);
		for(CartDTO ca : caList) {
			ca = cartService.setFinalPrice(ca);
			result = cartDAO.setFinalPriceUpdate(ca);
		}
		
		return result;
	}
	
}