package com.pegasus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.pegasus.model.Product;
import com.pegasus.service.CategoryService;
import com.pegasus.service.ProductService;

@Controller
public class IndexController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@RequestMapping(value={"/","/main","/home"})
	public String index(HttpSession session,Model model)
	{	
		List<Product> productList=productService.getAllProducts();
		model.addAttribute("productList",productList);
		session.setAttribute("categories",categoryService.getAllCategories());
		
		
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false)String logout,Model model)
	{
		if(error!=null)
		model.addAttribute("error","Invalid Username and password..");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully");
;		return "login";
	}
	
	@RequestMapping("/contactus")
	public String contact()
	{
		return "contactus";
	}
	
	@RequestMapping("/electronics")
	public String elect(Model model)
	{
		List<Product> productList=productService.getAllProducts();
		model.addAttribute("productList",productList);
		return "electronics";
	}
	@RequestMapping("/allviewproduct/{id}")
	public String viewProduct(@PathVariable int id, Model model) {

		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		

		return "customerProduct";
	}
	
	
}
