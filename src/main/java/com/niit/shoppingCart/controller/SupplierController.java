package com.niit.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	Supplier supplier;

	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping("/supplier")
	public ModelAndView showRegistrationPage(Model m) {
		m.addAttribute("supplier", new Supplier());
		ModelAndView mv = new ModelAndView("supplier");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}

	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String registering(@ModelAttribute("supplier") Supplier supplier) {
		supplierDAO.addSupplier(supplier);
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("successMsg", "true");
		return "redirect:/supplier";
	}
}
