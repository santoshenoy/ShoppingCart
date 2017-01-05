package com.niit.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController {

	@Autowired
	UserDAO userDAO;

	@Autowired
	User user;

	@RequestMapping("/login")
	public ModelAndView showLoginPage() {
		ModelAndView mv = new ModelAndView("Login");
		mv.addObject("showLoginPage", "true");
		return mv;
	}

	@RequestMapping("/register")
	public ModelAndView showRegistrationPage() {
		ModelAndView mv = new ModelAndView("Registration");
		mv.addObject("showRegistrationPage", "true");
		return mv;
	}

	@RequestMapping("/")
	public String homePage() {
		return "home";
	}

	@RequestMapping(value = "/validate")
	public ModelAndView validate(@RequestParam("id") String id, @RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView("home");

		if (userDAO.validate(id, password) != null) {
			mv.addObject("successMsg", "You have logged in successfully!");
		} else {
			mv.addObject("successMsg", "Entered Username and/or Password not in our records");
		}

		return mv;
	}

	@RequestMapping("/registering")
	public ModelAndView registering() {
		ModelAndView mv = new ModelAndView("home");

		mv.addObject("successMsg", "You have registered successfully!");
		return mv;
	}

}
