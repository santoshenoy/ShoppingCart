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
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.Util;

@Controller
public class ProductController {
	@Autowired
	Product product;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	Supplier supplier;

	@Autowired
	SupplierDAO supplierDAO;

	@Autowired
	Category category;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/product")
	public String showRegistrationPage(Model m) {
		m.addAttribute("product", new Product());
		m.addAttribute("productList", productDAO.list());
		m.addAttribute("supplier", new Supplier());
		m.addAttribute("supplierList", supplierDAO.list());
		m.addAttribute("category", new Category());
		m.addAttribute("categoryList", categoryDAO.list());
		return "product";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product) {
		Util util = new Util();
		String id = util.removeComma(product.getId());
		product.setId(id);
		Category category = categoryDAO.getByName(product.getCategory().getName());
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		product.setCategory(category);
		product.setCategory_id(category.getId());
		product.setSupplier(supplier);
		product.setSupplier_id(supplier.getId());
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
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "product";
	}

}
