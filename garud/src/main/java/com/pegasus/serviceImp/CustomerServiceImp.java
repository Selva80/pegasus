package com.pegasus.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pegasus.Dao.CustomerDao;
import com.pegasus.model.Customer;
import com.pegasus.service.CustomerService;

@Service
public class CustomerServiceImp implements CustomerService {

	@Autowired
	 private CustomerDao customerDao;
	
	public void saveCustomer(Customer customer)
	{
		customerDao.saveCustomer(customer);
		
		
	}

	public List<Customer> getCustomers() {
		
		return customerDao.getCustomers();
	}

	public Customer getCustomerById(int id) {
		
		return customerDao.getCustomerById(id);
	}

	public void deleteCustomer(int id) {
		
		customerDao.deleteCustomer(id);
	}

	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
		
	}

	public Customer getCustomerByUserId(int id) {
	return	customerDao.getCustomerByUserId(id);
	}
}
