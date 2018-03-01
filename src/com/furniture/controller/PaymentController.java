package com.furniture.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.furniture.entity.PaymentBean;
import com.furniture.service.AddCartListService;
import com.furniture.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	PaymentService paymentService;
	@Autowired
	AddCartListService addCartListService;
	
	@RequestMapping(value="/payment.do",method=RequestMethod.GET)
	public String payment(@ModelAttribute PaymentBean payment,ModelMap model)
	{
		paymentService.add(payment);
		
		return "index";
		
	}

}
