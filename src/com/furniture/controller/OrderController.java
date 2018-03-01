package com.furniture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.furniture.entity.AddCartListBean;
import com.furniture.entity.OrderBean;
import com.furniture.service.AddCartListService;
import com.furniture.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	@Autowired
	AddCartListService addCartListService;
	
	@RequestMapping(value="order.do",method=RequestMethod.GET)
	public String Order(@ModelAttribute OrderBean orderBean,@ModelAttribute AddCartListBean addCart,ModelMap Model)
	{
		/*addCartListService.remove(addCart);*/
		orderService.add(orderBean);
		return "payment";
		
	}
	
	
	@RequestMapping(value="/orderHistory.do", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam ("userId") int userId,@ModelAttribute AddCartListBean addCartList, ModelMap model){
		System.out.println("hello"+ +userId);
		List<OrderBean> view=orderService.viewOrderHistory(userId,addCartList);

		model.addAttribute("view",view);

		return new ModelAndView("order",model);
	}
}
