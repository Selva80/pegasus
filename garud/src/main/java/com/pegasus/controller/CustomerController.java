package com.pegasus.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pegasus.model.*;

import com.pegasus.service.CustomerService;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/all/register")
	public String getRegistration(Model model)
	{
		model.addAttribute("customer",new Customer());
		
		return "registration";
	}
	
	
	
	@RequestMapping("/registerform")
	public String registerCustomer(@Valid @ModelAttribute(name="customer")Customer customer,BindingResult result,Model model)
	{
		if(result.hasErrors())
			return "registration";
		
		List<Customer> customers=customerService.getCustomers();
		String username=customer.getUsers().getUsername();
		String email=customer.getcEmail();
		for(Customer c:customers)
		{
			if(c.getUsers().getUsername().equals(username))
			{
				model.addAttribute("duplicateUsername","Username already exists");
				return "registration";
			}
			
		}
		for(Customer c:customers)
		{
			if(c.getcEmail().equals(email))
			{
				model.addAttribute("duplicateEmail","Username already exists");
				return "registration";
			}
			
		}
		customerService.saveCustomer(customer);
		model.addAttribute("registrationSucess","Registered Successfully..");
		return "login";
	}
	
	@RequestMapping("/admin/CustomerDetails")
	public String allCustomers(Model model)
	{
		List<Customer> customerList =customerService.getCustomers();
		model.addAttribute("customerList",customerList );
		return "allCustomerList";
	}
	
	@RequestMapping("/customer/Details/{id}")
	public String viewCustomer(@PathVariable int id,Model model)
	{
		Customer customer=customerService.getCustomerById(id);
		model.addAttribute("customer",customer);
		BillingAddress billingAddress1= customer.getBillingAddress();
		model.addAttribute("billingAddress", billingAddress1);
		
		
		return "viewCustomerById";
	}
	@RequestMapping("/admin/customer/delete/{id}")
	public String deleteCustomer(@PathVariable int id)
	{		
		customerService.deleteCustomer(id);
		
		return "redirect:/admin/CustomerDetails";
	}
	
	@RequestMapping("/admin/customer/update/{id}")
	public String editCustomer(@PathVariable int id,Model model)
	{
		Customer customer=customerService.getCustomerById(id);
		model.addAttribute("customer",customer);
		return "updateCustomer";
	}
	
	
	
	@RequestMapping("/all/customer/registerform/{id}")
	public String updateCustomer(@Valid @ModelAttribute(name="customer") Customer customer,BindingResult result)
	{		
		if(result.hasErrors())
		{	System.out.println("HAS ERRORS");
			return "updateCustomer";
		}
		System.out.println("After validation");
		customerService.updateCustomer(customer);
		
		return "redirect:/admin/CustomerDetails";
	}
}

