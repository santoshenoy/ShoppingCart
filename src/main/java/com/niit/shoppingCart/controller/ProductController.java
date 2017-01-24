package com.niit.shoppingCart.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.Util;

@Controller
public class ProductController {

	public static Logger log = LoggerFactory.getLogger(ProductController.class);

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

	private Path path;

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
	public String addProduct(@Valid @ModelAttribute("product") Product product, HttpServletRequest request) {
		log.debug("Starting of the addProduct Method");
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
		MultipartFile file = product.getImage();
		System.out.println(product.getImage());
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getId() + ".jpg");
		if (file != null && !file.isEmpty()) {
			try {
				file.transferTo(new File(path.toString()));
				log.debug("image uploaded....");
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("image saving failed", e);
			}
		}
		log.debug("Ending of the addProduct Method");
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

	@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("selectedProduct", productDAO.get(id));
		return "redirect:/backToHome";
	}

	@RequestMapping(value = "/backToHome", method = RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") final Product selectedProduct, final Model model) {
		model.addAttribute("selectedProduct", selectedProduct);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "item";
	}

}
