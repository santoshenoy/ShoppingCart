package com.niit.shoppingCart.controller;

import javax.validation.Valid;

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
	@Autowired
	Category category;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/category")
	public ModelAndView showCategoryPage(Model m) {
		m.addAttribute("category", new Category());
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("category") Category category) {
		Util util = new Util();
		String id = util.removeComma(category.getId());
		category.setId(id);
		categoryDAO.addCategory(category);
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("successMsg", "true");
		return "redirect:/category";
	}

	@RequestMapping("category-delete-{id}")
	public String deleteCategory(@PathVariable("id") String id, Model model) throws Exception {
		categoryDAO.deleteCategory(id);

		model.addAttribute("successMsg", "Deleted Successfully");
		return "redirect:/category";
	}

	@RequestMapping(value = "category-edit-{id}", method = RequestMethod.GET)
	public String editCategory(@PathVariable("id") String id, Model model) throws Exception {

		model.addAttribute("category", this.categoryDAO.get(id));

		model.addAttribute("categoryList", this.categoryDAO.list());
		return "category";
	}

}
