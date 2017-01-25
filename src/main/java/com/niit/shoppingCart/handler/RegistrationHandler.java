package com.niit.shoppingCart.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Component
public class RegistrationHandler {

	@Autowired
	UserDAO userDAO;

	public User initFlow() {
		return new User();
	}

	public String validateDetails(User user, MessageContext messageContext) {
		String status = "success";

		if (user.getName().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("name").defaultText("UserName cannt be empty").build());
			status = "failure";
		}
		if (user.getPassword().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}

		if (user.getMail().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if (user.getMobile().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}

		return status;
	}

	public String saveDetails(User user) {
		userDAO.saveOrUpdate(user);
		return "success";
	}

}
