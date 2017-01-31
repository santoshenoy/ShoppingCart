package com.niit.shoppingCart.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Payment;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Shipping;
import com.niit.shoppingcart.model.User;

@Controller
public class CartController {

	public static Logger log = LoggerFactory.getLogger(CartController.class);

	@Autowired(required = true)
	Cart cart;

	@Autowired(required = true)
	CartDAO cartDAO;

	@Autowired(required = true)
	CategoryDAO categoryDAO;

	@Autowired(required = true)
	ProductDAO productDAO;

	@Autowired(required = true)
	Product product;

	@Autowired(required = true)
	UserDAO userDAO;

	@Autowired(required = true)
	private User user;

	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model, Principal principal) {
		log.debug("Beginning of the myCart method");
		try {
			model.addAttribute("cart", new Cart());
			model.addAttribute("cartList", this.cartDAO.userCartList(principal.getName()));
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", this.categoryDAO.list());
			model.addAttribute("displayCart", "true");
			int i;
			int s = 0;
			int n = cartDAO.userCartList(principal.getName()).size();
			log.debug("Size=" + n);
			for (i = 0; i < n; i++) {
				s = s + cartDAO.userCartList(principal.getName()).get(i).getPrice();
			}
			log.debug("Sum" + s);
			model.addAttribute("sum", s);

		} catch (Exception ex) {
			log.debug("ex.getMessage");
		}
		log.debug("Ending of the myCart method");
		return "cart";
	}

	@RequestMapping(value = "cart/add/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id, HttpServletRequest request, Principal principal) {
		log.debug("Beginning of the addToCart method");
		try {
			Product product = productDAO.get(id);
			Cart cart = new Cart();
			cart.setPrice(product.getPrice());
			cart.setP_id(product.getId());
			cart.setP_name(product.getName());
			cart.setQuantity(1);
			cart.setU_id(principal.getName());
			cart.setStatus("N");
			cartDAO.addCart(cart);
		} catch (Exception e) {
			log.debug(e.getMessage());
		}
		log.debug("Ending of the addToCart method");
		return "redirect:/";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model, Principal principal) {
		log.debug("Beginning of the Checkout method");
		int i;
		int s = 0;
		int n = cartDAO.userCartList(principal.getName()).size();
		log.debug("Size = " + n);
		for (i = 0; i < n; i++) {
			s = s + cartDAO.userCartList(principal.getName()).get(i).getPrice();
		}
		log.debug("Sum= " + s);
		model.addAttribute("sum", s);
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.userCartList(principal.getName()));
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the Checkout method");
		return "/checkout";

	}

	@RequestMapping("/cart/delete/{id}")
	public String deleteCart(@PathVariable("id") int id, Model model) {
		log.debug("Beginning of the deleteCart method");
		cartDAO.deleteCart(id);
		log.debug("Ending of the deleteCart method");
		return "redirect:/myCart";
	}

	@RequestMapping("/shipping")
	public String getShipment(Model model) {
		log.debug("Beginning of the getShipment method");
		model.addAttribute("shipping", new Shipping());
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the getShipment method");
		return "shipping";
	}

	@RequestMapping("/thanks")
	public String getThanks(Model model) {
		log.debug("Beginning of the getThanks method");
		String n = session.getAttribute("user_email").toString();
		log.info("User name while deleting cart......" + n);
		cartDAO.deleteCartByUser(n);
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the getThanks method");
		return "thanks";
	}

	@RequestMapping("/payment")
	public String getPayment(Model model) {
		log.debug("Beginning of the getPayment method");
		model.addAttribute("payment", new Payment());
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the getPayment method");
		return "payment";
	}

}
