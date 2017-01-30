package com.niit.shoppingCart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;

@Controller
public class UserController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private User user;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private Supplier supplier;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private Product product;

	@RequestMapping(value = "/user")
	public String getUser() {
		return "login";
	}

	@RequestMapping(value = "/admin")
	public String getAdmin(Model m) {
		log.debug("Start of the getAdmin method");
		m.addAttribute("categoryList", categoryDAO.list());
		log.debug("Ending of the getAdmin method");
		return "adminhome";
	}

	@RequestMapping(value = "/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		log.debug("Start of the login method");
		model.addAttribute("categoryList", categoryDAO.list());
		if (error != null) {
			log.debug("Error");
			model.addAttribute("loginerror", "Invalid username and/or password");
		}
		if (logout != null) {
			log.debug("Logout Called");
			model.addAttribute("loginmsg", "You have logged out");
		}
		log.debug("End of the login method");
		return "login";
	}

	@RequestMapping("/register")
	public String showRegistrationPage(Model model) {
		log.debug("Start of the showRegistrationPage method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the showRegistrationPage method");
		return "redirect:/memberShip.obj";
	}

	@RequestMapping("/")
	public String homePage(Model model) {
		log.debug("Start of the homePage method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the homePage method");
		return "home";
	}

	@RequestMapping("onLoad")
	public String onLoad(Model model) {
		log.debug("Start of the onLoad method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the onLoad method");
		return "home";
	}

	@RequestMapping("aboutus")
	public String aboutUs(Model model) {
		log.debug("Start of the aboutUs method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the aboutUs method");
		return "aboutus";
	}

	@RequestMapping("contactus")
	public String contactUs(Model model) {
		log.debug("Start of the contactUs method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the contactUs method");
		return "contactus";
	}

	@RequestMapping("careers")
	public String careers(Model model) {
		log.debug("Start of the careers method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the careers method");
		return "careers";
	}

	@RequestMapping("faq")
	public String faq(Model model) {
		log.debug("Start of the faq method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the faq method");
		return "faq";
	}

	@RequestMapping("terms")
	public String terms(Model model) {
		log.debug("Start of the terms method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the terms method");
		return "terms";
	}

	@RequestMapping("shippingquery")
	public String shippingquery(Model model) {
		log.debug("Start of the shippingquery method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the shippingquery method");
		return "shippingquery";
	}

	@RequestMapping("cancel")
	public String cancellation(Model model) {
		log.debug("Start of the cancel method");
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End of the cancel method");
		return "cancel";
	}

	@RequestMapping(value = "/Acoustic-{id}")
	public ModelAndView getAcoustic(@PathVariable("id") String id, Model model) {
		log.debug("Start of the getAcoustic method");
		ModelAndView mv = new ModelAndView("productLand");
		model.addAttribute("categoryList", categoryDAO.list());
		mv.addObject("category", this.categoryDAO.get(id));
		log.debug("End of the getAcoustic method");
		return mv;
	}

	@RequestMapping(value = "/Electric-{id}")
	public ModelAndView getElectric(@PathVariable("id") String id, Model model) {
		log.debug("Start of the getElectric method");
		ModelAndView mv = new ModelAndView("productLand");
		model.addAttribute("categoryList", categoryDAO.list());
		mv.addObject("category", this.categoryDAO.get(id));
		log.debug("End of the getElectric method");
		return mv;
	}

	@RequestMapping(value = "/Bass-{id}")
	public ModelAndView getBass(@PathVariable("id") String id, Model model) {
		log.debug("Start of the getBass method");
		ModelAndView mv = new ModelAndView("productLand");
		model.addAttribute("categoryList", categoryDAO.list());
		mv.addObject("category", this.categoryDAO.get(id));
		log.debug("End of the getBass method");
		return mv;
	}

	@RequestMapping(value = "/Access-{id}")
	public ModelAndView getAccessories(@PathVariable("id") String id, Model model) {
		log.debug("Start of the getAccessories method");
		ModelAndView mv = new ModelAndView("productLand");
		model.addAttribute("categoryList", categoryDAO.list());
		mv.addObject("category", this.categoryDAO.get(id));
		log.debug("End of the getAccessories method");
		return mv;
	}

	@RequestMapping(value = "/Amps-{id}")
	public ModelAndView getAmplifiers(@PathVariable("id") String id, Model model) {
		log.debug("Start of the getAmplifiers method");
		ModelAndView mv = new ModelAndView("productLand");
		model.addAttribute("categoryList", categoryDAO.list());
		mv.addObject("category", this.categoryDAO.get(id));
		log.debug("End of the getAmplifiers method");
		return mv;
	}

}
