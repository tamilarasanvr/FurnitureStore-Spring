package com.furniture.controller;



import java.util.List;










import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.furniture.entity.ProductBean;
import com.furniture.entity.UserBean;
import com.furniture.service.FurnitureService;

@Controller

public class UserController {
	
	@Autowired
	FurnitureService furnitureService;
	

	@RequestMapping(value="/registerUser.do",method=RequestMethod.GET)
	public String registerUser
		(@ModelAttribute UserBean user, ModelMap model){
	furnitureService.add(user);
	
		model.addAttribute("Status","Added Successfully");
		return "register";
	}
	
	@RequestMapping(value ="/loginProcess.do",method= RequestMethod.POST)
	public String login(@ModelAttribute UserBean user ,ModelMap model,HttpServletRequest request){	
		
		HttpSession session = request.getSession(true);
		
	int isValidLogin=furnitureService.validate(user);
	{
	if(isValidLogin==1)
	{
	String name= furnitureService.retriveName(user);
	model.addAttribute("Status",name );
	int id=furnitureService.retriveId(user);
	session.setAttribute("Id", id);
	model.addAttribute("Id",id);
	session.getAttribute("Id");
	/*UserBean userDetail= furnitureService.retreiveUser(user);
	model.addAttribute("Id",userDetail );*/
	
	return "Product";
	}
	else if(isValidLogin==2)
	{
	
	String name=furnitureService.retriveName(user);
	model.addAttribute("Status",name);
	return "admin";
	}
	else
	return "login";
	}
	}
	
	@RequestMapping(value="/viewInfo.do", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam("userId") int userId, @ModelAttribute UserBean user, Model model){
		
		/*int userid=user.getUserId();*/
		UserBean view=furnitureService.view(userId,user);
		model.addAttribute("view",view);
		
		return new ModelAndView("MyAccount");
	}
	
	
	
			
	@RequestMapping(value="/view.do", method=RequestMethod.GET)
	public ModelAndView Userlist(ModelMap model) {
		List<UserBean> list =furnitureService.Userlist();
		
		model.addAttribute("list", list);
		
		return new ModelAndView("ViewUsers", model);

}
	
	
	
	@RequestMapping(value="/search.do", method=RequestMethod.GET)
	public ModelAndView searchUser
	(@ModelAttribute UserBean user, ModelMap model){

	List<UserBean> list =furnitureService.searchUser(user);
		
		model.addAttribute("list", list);
		
		return new ModelAndView("ViewUsers", model);

}
	
	@RequestMapping(value="/updateUser.do",method=RequestMethod.GET)
	public String update
		(@ModelAttribute UserBean user, ModelMap model){
		
		furnitureService.update(user);
		
		return "Product";
	}
	
	
	
	
	
	/*@RequestMapping(value="/update.do", method=RequestMethod.GET)
	public ModelAndView User(@ModelAttribute UserBean user,ModelMap model) {
		List<UserBean> list =furnitureService.User( user);
		
		model.addAttribute("list", list);
		
		return new ModelAndView("MyAccount", model);
	}*/
	
	
	
	}

	
