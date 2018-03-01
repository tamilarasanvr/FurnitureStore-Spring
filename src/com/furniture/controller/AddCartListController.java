package com.furniture.controller;





import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.furniture.entity.AddCartListBean;
import com.furniture.entity.ProductBean;
import com.furniture.service.AddCartListService;


@Controller
public class AddCartListController {
	@Autowired
	AddCartListService addCartListService;
	
	@RequestMapping(value="/addCart.do",method=RequestMethod.GET)
	public String addCartList
		(@ModelAttribute AddCartListBean addCartList, ModelMap model){
		System.out.println(addCartList.getProductName());
		addCartListService.add(addCartList);
		return "Product";
	}
	
	
	@RequestMapping(value="/viewCartList.do", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam ("userId") int userId,@ModelAttribute AddCartListBean addCartList, ModelMap model){
	/*HttpSession session = request.getSession();*/
	System.out.println("hello"+ +userId);
		/*int Id=(int) session.getAttribute("Id");
		System.out.println("Hello"+Id);*/
/*List<AddCartListBean> view=addCartListService.viewCartList(addCartList);*/
/*System.out.println("me"+ +((AddCartListBean) view).getProductId());*/
	/*	System.out.println(view.getPrice());*/
		/*System.out.println("ID "+session.getAttribute("Id"));*/
		List<AddCartListBean> view=addCartListService.viewCartList(userId,addCartList);

model.addAttribute("view",view);

return new ModelAndView("addcart",model);
	}
	
	
/*	@RequestMapping(value="/addCartList.do",method=RequestMethod.GET)
	public ModelAndView Productlist(ModelMap model) {
		List<AddCartListBean> list =addCartListService.viewCart();
		model.addAttribute("list", list);
		return new ModelAndView("viewproductlist", model);
	}*/

}
