package com.bb.bean.orders;

import java.net.http.HttpHeaders;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.cart.CartDTO;
import com.bb.bean.cart.CartService;
import com.bb.bean.member.MemberDAO;
import com.bb.bean.member.MemberDTO;

@Controller
@RequestMapping("order/**")
public class OrdersController {
	
	@Autowired
	OrdersService ordersService;
	
	@Autowired
	CartService cartService;
	
	@PostMapping("orderInsert")
	public ModelAndView setInsert(OrdersDTO ordersDTO, boolean save_addr, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		String result = ordersService.setInsert(ordersDTO);
		
		if(save_addr) {
			MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
			memberDTO = ordersService.setAddrUpdate(ordersDTO, memberDTO);
			session.setAttribute("member", memberDTO);
		}
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	
	@PostMapping("orderCheck")
	public ModelAndView getCheck(String imp_uid, String orderUid, long usePoint, HttpSession session) throws Exception {
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setOrderUid(orderUid);
		ordersDTO = ordersService.getSelect(ordersDTO);
		
		ordersService.getToken();

		String result = ordersService.paymentByImpUid(imp_uid, usePoint, ordersDTO);
		
		if(result.equals("결제 성공")) {
			ordersDTO.setPayState("결제완료");
			ordersService.setPayStateUpdate(ordersDTO);
			result = "결제가 완료되었습니다.";
			
			ordersService.setImpUidUpdate(ordersDTO, imp_uid);
			ordersService.setStockUpdate(ordersDTO);
			ordersService.shiftCartList(ordersDTO);
			
			MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
			long restPoint = memberDTO.getPoint();
			restPoint = ordersService.setPointInsert(ordersDTO, usePoint, restPoint);
			
			memberDTO.setPoint(restPoint);
			session.setAttribute("member", memberDTO);
			
		}else {
			ordersService.cancelPaymentChecksumByImpUid(imp_uid);
			ordersDTO.setPayState("비정상결제");
			ordersService.setPayStateUpdate(ordersDTO);
			result = "비정상적인 결제 시도입니다.";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");

		return mv;
	}
	
	/* 결제 취소된 건 업데이트 */
	@PostMapping("orderCancelled")
	public void orderCancelled(OrdersDTO ordersDTO) throws Exception {
		ordersDTO.setPayState("결제취소");
		ordersService.setPayStateUpdate(ordersDTO);
	}
	
}
