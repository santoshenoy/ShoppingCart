package com.niit.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

@Controller
public class CategoryController {
	@Autowired
	Category category;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/category")
	public ModelAndView showRegistrationPage(Model m) {
		m.addAttribute("category", new Category());
		ModelAndView mv = new ModelAndView("category");
		return mv;
	}

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String registering(@ModelAttribute("category") Category category) {

		categoryDAO.addCategory(category);
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("successMsg", "true");
		return "redirect:/category";
	}
}
