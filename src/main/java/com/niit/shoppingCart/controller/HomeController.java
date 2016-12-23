package com.niit.shoppingCart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController 
{
	@RequestMapping("/login")
	public ModelAndView showLoginPage()
	{
		ModelAndView mv = new ModelAndView("Login");
		mv.addObject("msg", "You Clicked Login Link");
		mv.addObject("showLoginPage", "true");
		return mv;
	}
	@RequestMapping("/register")
	public ModelAndView showRegistrationPage()
	{
		ModelAndView mv = new ModelAndView("Registration");
		mv.addObject("msg", "You Clicked Registration Page");
		mv.addObject("showRegistrationPage", "true");
		return mv;
	}
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("/validate")
	public ModelAndView validate()
	{
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}
	
}
