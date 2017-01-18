package com.niit.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

@Controller
public class ProductController {
	@Autowired
	Product product;

	@Autowired
	ProductDAO productDAO;

	@RequestMapping("/product")
	public ModelAndView showRegistrationPage(Model m) {
		m.addAttribute("product", new Product());
		ModelAndView mv = new ModelAndView("product");
		mv.addObject("productList", productDAO.list());
		return mv;
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {

		productDAO.addProduct(product);
		ModelAndView mv = new ModelAndView("product");
		mv.addObject("successMsg", "true");
		return "redirect:/product";
	}

	@RequestMapping("product-delete-{id}")
	public String deleteProduct(@PathVariable("id") String id, Model model) throws Exception {
		productDAO.deleteProduct(id);

		model.addAttribute("successMsg", "Deleted Successfully");
		return "redirect:/product";
	}

	@RequestMapping(value = "product-edit-{id}", method = RequestMethod.GET)
	public String editProduct(@PathVariable("id") String id, Model model) throws Exception {

		model.addAttribute("product", this.productDAO.get(id));

		model.addAttribute("productList", this.productDAO.list());
		return "product";
	}
}
