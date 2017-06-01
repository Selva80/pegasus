package com.pegasus.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pegasus.model.Supplier;
import com.pegasus.service.CategoryService;
import com.pegasus.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	 private SupplierService supplierService;
	
	@Autowired
	CategoryService categoryService; 
	
	@RequestMapping("/admin/supplier/supplierPage")
	public String getSupplierPage(Model model)
	{
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList",supplierService.getAllSupplier());
		model.addAttribute("categoryList", categoryService.getAllCategories());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("btnLabel","Add Supplier");
		
		return "suppliers";
	}
		
	@RequestMapping("/admin/supplier/addSupplier")
	public String addSupplier(@Valid @ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			
			model.addAttribute("btnLabel","Retry");
			return "suppliers";
		}
		supplierService.addSupplier(supplier);
		return "redirect:/admin/supplier/supplierPage";
	}
	
	@RequestMapping("/admin/supplier/updateSupplierById/{id}")
	public String updateSupplier(Model model,@PathVariable("id") int id)
	{
		model.addAttribute("categoryList", categoryService.getAllCategories());
		model.addAttribute("supplier", supplierService.getSupplierById(id));
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("btnLabel","update Supplier");
		return "suppliers";
	}
	
	@RequestMapping("/admin/supplier/deleteSupplierById/{id}")
	public String deleteSupplier(@PathVariable("id") int id)
	{
		supplierService.deleteSupplier(id);
		return "redirect:/admin/supplier/supplierPage";
	}
}
