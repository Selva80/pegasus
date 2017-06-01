package com.pegasus.DaoImp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pegasus.Dao.CustomerDao;
import com.pegasus.model.Authorities;
import com.pegasus.model.Cart;
import com.pegasus.model.Customer;
import com.pegasus.model.Users;

@Repository
public class CustomerDaoImp implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveCustomer(Customer customer) {

		Users users = customer.getUsers();
		users.setEnabled(true);
		Authorities authorities = new Authorities();
		authorities.setUsername(users.getUsername());
		authorities.setRole("ROLE_USER");
		Session session = sessionFactory.openSession();
		session.save(authorities);

		Cart cart = new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);

		session.save(customer);

		session.flush();
		session.close();
	}

	public List<Customer> getCustomers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customerList = query.list();
		session.flush();
		session.close();

		return customerList;
	}

	public Customer getCustomerById(int id) {
		Session session = sessionFactory.openSession();
		Customer customer = (Customer) session.get(Customer.class, id);
		session.close();
		return customer;
	}

	public void deleteCustomer(int id) {
		Session session = sessionFactory.openSession();
		Customer customer = (Customer) session.get(Customer.class, id);
		session.delete(customer);
		session.flush();
		session.close();

	}

	public void updateCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		session.update(customer);
		session.flush();
		session.close();

	}

	public Customer getCustomerByUserId(int id) {
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("from Customer where USERS_UID ="+"'"+id+"'");
		List<Customer> customers=query.list();
		session.close();
		Customer customerbyId=customers.get(0);
		return customerbyId;
	}

}
