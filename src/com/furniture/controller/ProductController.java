package com.furniture.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.furniture.dao.ProductDAO;
import com.furniture.entity.ProductBean;
import com.furniture.service.ProductService;
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;


@Controller

public class ProductController {
	
	@Autowired
	ProductService productService;
	ProductDAO productDAO;
	
	
	@RequestMapping(value="/addProduct.do",method=RequestMethod.GET)
	public String registerUser
		(@ModelAttribute ProductBean product, ModelMap model){
		productService.add(product);
		/*String name= productService.retriveProduct(product);*/
		return "addpro";
	}
	
	@RequestMapping(value="/viewProduct.do", method=RequestMethod.GET)
	public ModelAndView Productlist(ModelMap model) {
		List<ProductBean> list =productService.Productlist();
		
		model.addAttribute("list", list);
		
		return new ModelAndView("viewproductlist", model);
	}
	

	@RequestMapping(value="/searchProduct.do", method=RequestMethod.GET)
	public ModelAndView searchProduct
	(@ModelAttribute ProductBean product, ModelMap model){

		List<ProductBean> list =productService.searchProduct(product);
		
		model.addAttribute("list", list);
		
		return new ModelAndView("viewproductlist", model);

}
	
	@RequestMapping(value="/updateProduct.do", method=RequestMethod.GET)
	public ModelAndView updateProduct
	(@ModelAttribute ProductBean product, Model model){

		ProductBean updatelist=productService.updateProduct(product);
		model.addAttribute("updatelist",updatelist);
		
		return new ModelAndView("viewproductlist");

		
		/*List<ProductBean> updatelist =productService.updateProduct(product);
		
		model.addAttribute("updatelist", updatelist);
		
		return new ModelAndView("viewproductlist", model);
*/
}
	
	@RequestMapping(value="/update.do",method=RequestMethod.GET)
	public String update
		(@ModelAttribute ProductBean product, ModelMap model){
		
		productService.update(product);
		/*String name= productService.retriveProduct(product);*/
		return "viewproductlist";
	}
	

	/*@RequestMapping(value="/addCart.do", method=RequestMethod.GET)
	public ModelAndView addCart
	(@ModelAttribute ProductBean product, Model model){

		ProductBean view=productService.view(product);
		model.addAttribute("view",view);
		
		return new ModelAndView("addcart");
	}*/
	


	@RequestMapping(value="/findBed.do",method=RequestMethod.GET)
	public ModelAndView findBed(@ModelAttribute ProductBean product, ModelMap model,HttpSession session)
	{
		/*String productName=productService.retrieveName(product);
		model.addAttribute("name",productName);*/
		session.getAttribute("Id");
		product.setProductCategory("Beds");
		List<ProductBean> list =productService.findBed(product);
		model.addAttribute("list",list);
		
		return new ModelAndView("beds",model);
	}
	
	@RequestMapping(value="/findChair.do",method=RequestMethod.GET)
	public ModelAndView findChair(@ModelAttribute ProductBean product, ModelMap model)
	{
		/*String productName=productService.retrieveName(product);
		model.addAttribute("name",productName);*/
		product.setProductCategory("Chair");
		List<ProductBean> list =	productService.findChair(product);
		model.addAttribute("list",list);
		return new ModelAndView("beds",model);
	}
	
	@RequestMapping(value="/findDoor.do",method=RequestMethod.GET)
	public ModelAndView findDoor(@ModelAttribute ProductBean product, ModelMap model)
	{
		/*String productName=productService.retrieveName(product);
		model.addAttribute("name",productName);*/
		product.setProductCategory("Door");
		List<ProductBean> list =	productService.findDoor(product);
		model.addAttribute("list",list);
		return new ModelAndView("beds",model);
	}
	
	@RequestMapping(value="/findTable.do",method=RequestMethod.GET)
	public ModelAndView findTable(@ModelAttribute ProductBean product, ModelMap model)
	{
		/*String productName=productService.retrieveName(product);
		model.addAttribute("name",productName);*/
		product.setProductCategory("Table");
		List<ProductBean> list =	productService.findTable(product);
		model.addAttribute("list",list);
		return new ModelAndView("beds",model);
	}
	
	
	
	@RequestMapping(value="/findTvstand.do",method=RequestMethod.GET)
	public ModelAndView findTvstand(@ModelAttribute ProductBean product, ModelMap model)
	{
		/*String productName=productService.retrieveName(product);
		model.addAttribute("name",productName);*/
		product.setProductCategory("Tv Stands");
		List<ProductBean> list =	productService.findTvstand(product);
		model.addAttribute("list",list);
		return new ModelAndView("beds",model);
	}
	
	
	/*@RequestMapping(value="/find.do", method=RequestMethod.GET)
	public ModelAndView listProduct(ModelMap model) {
		List<ProductBean> list =productService.listProduct();
		
		model.addAttribute("list", list);
		
		return new ModelAndView("beds", model);

}*/
}














	/*
	@RequestMapping(value="/addCart.do",method=RequestMethod.GET)
	public String addCart
		(@ModelAttribute AddCart addCart, ModelMap model){
		productService.addCart(addCart);
		String name= productService.retriveProduct(product);
		return "addCartList";
	}

}*/
	/*
	@RequestMapping(value="/load.do",method=RequestMethod.GET)
	public String loadcart(@ModelAttribute ProductBean productBean,ModelMap model){
		String product=productDAO.load(productBean.getProductId());
		System.out.println(product);
				return product;
		

	
	}
	}
	
*/
	/*@RequestMapping(value="test.do",method=RequestMethod.GET)
	public String productId(
		@ModelAttribute("product")ProductBean product,ModelMap model){
		String productId = productService.retriveId(product);
		model.addAttribute("productId",productId );
		return "User/addcart";
	}
*/
	
	/*
	@RequestMapping(value="/finding.do",method=RequestMethod.GET)
	public String login(@ModelAttribute("product") ProductBean product ,ModelMap model){	
		boolean isValidLogin=productService.validate(product);
		if(isValidLogin==true)
		{
		
		
		String name= productService.retriveName(product);
		model.addAttribute("Status",name );
		return "beds";
		}
		else
		return "Product";
		}*/


