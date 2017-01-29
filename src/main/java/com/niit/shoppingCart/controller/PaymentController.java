package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.PaymentDAO;
import com.niit.shoppingcart.model.Payment;

@Controller
public class PaymentController {

	public static Logger log = LoggerFactory.getLogger(PaymentController.class);

	@Autowired
	Payment payment;

	@Autowired
	PaymentDAO paymentDAO;

	@RequestMapping(value = "addPayment", method = RequestMethod.POST)
	public String addPayment(@Valid @ModelAttribute("payment") Payment payment) {
		log.debug("Beginning of the addPayment Method");
		paymentDAO.addPayment(payment);
		log.debug("Ending of the addPayment Method");
		return "redirect:/thanks";
	}

}
