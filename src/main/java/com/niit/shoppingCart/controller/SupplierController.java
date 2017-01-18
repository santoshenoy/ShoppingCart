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
		m.addAttribute("supplier", supplier);
		ModelAndView mv = new ModelAndView("supplier");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}

	@RequestMapping(value = "supplier-add", method = RequestMethod.POST)
	public String addSupplier(Model model, @Valid @ModelAttribute("supplier") Supplier supplier) {
		System.out.println("'Hi,");
		supplierDAO.addSupplier(supplier);
		return "redirect:/supplier";
	}

	@RequestMapping("supplier-delete-{id}")
	public String deleteSupplier(@PathVariable("id") String id, Model model) throws Exception {
		supplierDAO.deleteSupplier(id);
		System.out.println("'Hi,");
		model.addAttribute("successMsg", "Deleted Successfully");
		return "redirect:/supplier";
	}

	@RequestMapping(value = "supplier-edit-{id}")
	public String editSupplier(@PathVariable("id") String id, Model model) throws Exception {
		System.out.println("'Hi,");

		model.addAttribute("supplier", this.supplierDAO.get(id));
		model.addAttribute("supplierList", this.supplierDAO.list());
		System.out.println("Hi2");
		return "supplier";
	}

}
