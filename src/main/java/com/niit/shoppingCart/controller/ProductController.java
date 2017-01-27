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
	public String showProductPage(Model m) {
		log.debug("Beginning of the showProductPage method");
		m.addAttribute("product", new Product());
		m.addAttribute("productList", productDAO.list());
		m.addAttribute("supplier", new Supplier());
		m.addAttribute("supplierList", supplierDAO.list());
		m.addAttribute("category", new Category());
		m.addAttribute("categoryList", categoryDAO.list());
		log.debug("Ending of the showProductPage method");
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
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getId() + ".jpg");
		if (file != null && !file.isEmpty()) {
			try {
				file.transferTo(new File(path.toString()));
				log.debug("Image Uploaded");
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Image Saving Failed", e);
			}
		}
		log.debug("Ending of the addProduct Method");
		return "redirect:/product";
	}

	@RequestMapping("product-delete-{id}")
	public String deleteProduct(@PathVariable("id") String id, Model model) throws Exception {
		log.debug("Beginning of the deleteProduct method");
		productDAO.deleteProduct(id);
		model.addAttribute("successMsg", "Deleted Successfully");
		log.debug("Ending of the deleteProduct method");
		return "redirect:/product";
	}

	@RequestMapping(value = "product-edit-{id}", method = RequestMethod.GET)
	public String editProduct(@PathVariable("id") String id, Model model) throws Exception {
		log.debug("Beginning of the editProduct method");
		model.addAttribute("product", this.productDAO.get(id));
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the editProduct method");
		return "product";
	}

	@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		log.debug("Beginning of the getSelectedProduct method");
		redirectAttributes.addFlashAttribute("selectedProduct", productDAO.get(id));
		log.debug("Ending of the getSelectedProduct method");
		return "redirect:/shoptillyoudrop";
	}

	@RequestMapping(value = "/shoptillyoudrop", method = RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") final Product selectedProduct, final Model model) {
		log.debug("Beginning of the backToHome method");
		model.addAttribute("selectedProduct", selectedProduct);
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("Ending of the backToHome method");
		return "item";
	}

}
