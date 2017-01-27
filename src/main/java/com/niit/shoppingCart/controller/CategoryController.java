package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.util.Util;

@Controller
public class CategoryController {

	public static Logger log = LoggerFactory.getLogger(CategoryController.class);

	@Autowired
	Category category;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/category")
	public ModelAndView showCategoryPage(Model m) {
		log.debug("Beginning of the showCategoryPage method");
		m.addAttribute("category", new Category());
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("categoryList", categoryDAO.list());
		log.debug("Ending of the showCategoryPage method");
		return mv;
	}

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("category") Category category) {
		log.debug("Beginning of the addCategory method");
		Util util = new Util();
		String id = util.removeComma(category.getId());
		category.setId(id);
		categoryDAO.addCategory(category);
		log.debug("Ending of the addCategory method");
		return "redirect:/category";
	}

	@RequestMapping("category-delete-{id}")
	public String deleteCategory(@PathVariable("id") String id, Model model) throws Exception {
		log.debug("Beginning of the deleteCategory method");
		categoryDAO.deleteCategory(id);
		model.addAttribute("successMsg", "Deleted Successfully");
		log.debug("Ending of the deleteCategory method");
		return "redirect:/category";
	}

	@RequestMapping(value = "category-edit-{id}", method = RequestMethod.GET)
	public String editCategory(@PathVariable("id") String id, Model model) throws Exception {
		log.debug("Beginning of the editCategory method");
		model.addAttribute("category", this.categoryDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the editCategory method");
		return "category";
	}

}
