package com.niit.shoppingCart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;

@Controller
public class UserController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private User user;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private Supplier supplier;

	@RequestMapping("/validate")
	public ModelAndView validate(@RequestParam("id") String name, @RequestParam("password") String pwd) {
		log.debug("Starting of the Validate method");
		ModelAndView mv = new ModelAndView("home");
		user = userDAO.isValidUser(name, pwd);
		if (user != null) {
			if (user.getRole().equals("ROLE_ADMIN")) {
				mv.addObject("isAdmin", "true");
				mv.addObject("successMsg", "Hi Admin!");
			} else {
				mv.addObject("isAdmin", "false");
				mv.addObject("successMsg", "Hi User");
			}
		} else {
			mv.addObject("successMsg", "Entered username and/or password not in our records");
		}
		return mv;

	}

	@RequestMapping("/login")
	public ModelAndView showLoginPage() {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("showLoginPage", "true");
		return mv;
	}

	@RequestMapping("/register")
	public ModelAndView showRegistrationPage(Model m) {
		m.addAttribute("user", new User());
		ModelAndView mv = new ModelAndView("registration");
		mv.addObject("showRegistrationPage", "true");
		return mv;
	}

	@RequestMapping("/")
	public String homePage() {
		return "home";
	}

	@RequestMapping(value = "/registered", method = RequestMethod.POST)
	public ModelAndView registering(@ModelAttribute("user") User user) {
		user.setRole("ROLE_USER");
		userDAO.save(user);
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("successMsg", "You have registered successfully!");
		return mv;
	}

}
