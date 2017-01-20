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

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.Util;

@Controller
public class SupplierController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

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
		Util util = new Util();
		String id = util.removeComma(supplier.getId());
		supplier.setId(id);
		supplierDAO.addSupplier(supplier);
		return "redirect:/supplier";
	}

	@RequestMapping("supplier-delete-{id}")
	public String deleteSupplier(@PathVariable("id") String id, Model model) throws Exception {
		log.debug("Start of the deleteSupplier method");
		supplierDAO.deleteSupplier(id);
		model.addAttribute("successMsg", "Deleted Successfully");
		log.debug("End of the deleteSupplier method");
		return "redirect:/supplier";
	}

	@RequestMapping(value = "supplier-edit-{id}")
	public String editSupplier(@PathVariable("id") String id, Model model) throws Exception {
		model.addAttribute("supplier", this.supplierDAO.get(id));
		model.addAttribute("supplierList", this.supplierDAO.list());
		System.out.println("Hi2");
		return "supplier";
	}

}
