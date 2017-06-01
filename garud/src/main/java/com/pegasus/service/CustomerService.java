package com.pegasus.service;

import java.util.List;

import com.pegasus.model.Customer;

public interface CustomerService {
	public void saveCustomer(Customer customer);
	List<Customer> getCustomers();
	public Customer getCustomerById(int id);
	public void deleteCustomer(int id);
	 void updateCustomer(Customer customer);
	 public Customer getCustomerByUserId(int id);
}
