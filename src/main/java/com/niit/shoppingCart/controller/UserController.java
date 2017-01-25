package com.niit.shoppingCart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping(value = "/user")
	public String getUser() {
		return "login";
	}

	@RequestMapping(value = "/admin")
	public String getAdmin(Model m) {

		m.addAttribute("categoryList", categoryDAO.list());
		return "adminhome";
	}

	@RequestMapping(value = "/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		model.addAttribute("categoryList", categoryDAO.list());
		if (error != null) {
			log.debug("Error");
			model.addAttribute("loginerror", "Invalid username and/or password");
		}
		if (logout != null) {
			log.debug("Logout Called");
			model.addAttribute("loginmsg", "You have logged out");
		}
		return "login";
	}

	@RequestMapping("/register")
	public String showRegistrationPage(Model model) {

		model.addAttribute("categoryList", categoryDAO.list());
		return "redirect:/memberShip.obj";
	}

	@RequestMapping("/")
	public String homePage(Model model) {

		model.addAttribute("categoryList", categoryDAO.list());
		return "home";
	}

	@RequestMapping("onLoad")
	public String onLoad(Model model) {

		model.addAttribute("categoryList", categoryDAO.list());
		return "home";
	}

}
