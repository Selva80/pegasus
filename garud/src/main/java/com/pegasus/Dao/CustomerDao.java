package com.pegasus.Dao;

import java.util.List;

import com.pegasus.model.Customer;

public interface CustomerDao {

	public void saveCustomer(Customer customer);

	public List<Customer> getCustomers();

	public Customer getCustomerById(int id);

	public void deleteCustomer(int id);

	void updateCustomer(Customer customer);
	
	public Customer getCustomerByUserId(int id);
}
