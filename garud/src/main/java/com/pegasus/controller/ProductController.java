package com.pegasus.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.pegasus.model.Category;
import com.pegasus.model.Product;
import com.pegasus.service.CategoryService;
import com.pegasus.service.ProductService;

@Controller
public class ProductController {
	@Autowired(required = true)
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/admin/product/addProduct")
	public String addProduct(Model model) {

		model.addAttribute("product", new Product());
		List<Category> categoryDetails = categoryService.getAllCategories();
		model.addAttribute("categorydetails", categoryDetails);
		return "manageproduct";
	}

	@RequestMapping("/admin/product/saveProduct")
	public String saveProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("HAS ERRORS");
			return "manageproduct";
		}
		System.out.println("After validation");
		productService.saveProduct(product);
		MultipartFile[] image = product.getImage();
		for (int i = 0; i < image.length; i++) {
			if (image != null && !image[i].isEmpty()) {
				Path path = Paths.get("E:/DTproject1/garud/src/main/webapp/resources/images/product/" + product.getPid()
						+ "_" + i + ".png");

				try {
					image[i].transferTo(new File(path.toString()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return "redirect:/admin/product/productList";
	}

	@RequestMapping("/admin/product/productList")
	public String getAllProducts(Model model) {
		List<Product> product = productService.getAllProducts();
		for (Product p : product) {
			System.out.println(p.getPname());
			System.out.println(p.getPrice());
		}
		model.addAttribute("products", product);

		return "allProductList";
	}

	@RequestMapping("/admin/product/allviewproduct/{id}")
	public String viewProduct(@PathVariable int id, Model model) {

		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		Category category = product.getCategory();
		model.addAttribute("category", category);

		return "viewProduct";
	}

	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/admin/product/productList";
	}

	@RequestMapping("/admin/product/updateProductById/{id}") 
	public String updateProductById(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		List<Category> categoryDetails = categoryService.getAllCategories();
		model.addAttribute("categorydetails", categoryDetails);
		return "updateproduct";
	}

	@RequestMapping("/admin/product/updatedProduct/{id}")
	public String updateProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("HAS ERRORS");
			return "updateproduct";
		}
		System.out.println("After validation");
		productService.updateProduct(product);
		MultipartFile[] image = product.getImage();
		for (int i = 0; i < image.length; i++) {
			if (image != null && !image[i].isEmpty()) {
				Path path = Paths.get("E:/DTproject1/garud/src/main/webapp/resources/images/product/" + product.getPid()
						+ "_" + i + ".png");

				try {
					image[i].transferTo(new File(path.toString()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return "redirect:/admin/product/productList";
	}

	@RequestMapping("/admin/product/productsByCategory")
	public String getProductsByCategory(@RequestParam(name = "searchCondition") String searchCondition, Model model,
			HttpSession session) {
		session.setAttribute("categories", categoryService.getAllCategories());
		List<Product> products = productService.getAllProducts();
		// Assigning list of products to model attribute products
		model.addAttribute("products", products);
		model.addAttribute("searchCondition", searchCondition);
		return "allProductList";
	}
}
