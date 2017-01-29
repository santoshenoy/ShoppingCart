package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.ShippingDAO;
import com.niit.shoppingcart.model.Shipping;

@Controller
public class ShippingController {

	public static Logger log = LoggerFactory.getLogger(ShippingController.class);

	@Autowired
	Shipping shipping;

	@Autowired
	ShippingDAO shippingDAO;

	@RequestMapping(value = "addShipment", method = RequestMethod.POST)
	public String addShipment(@Valid @ModelAttribute("shipping") Shipping shipping) {
		log.debug("Beginning of the addShipment Method");
		shippingDAO.addShipment(shipping);
		log.debug("Ending of the addShipment Method");
		return "redirect:/payment";
	}

}
