package com.ssk.learning.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.ssk.learning.model.Customer;

@Component
public class CustomerDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	//add customer
	@Transactional
	public void addCustomers(Customer customer) {
		System.out.println(customer.toString());
		hibernateTemplate.save(customer);
	}

	//get all customer
	@Transactional
	public List<Customer> getAllCustomer() {
		return hibernateTemplate.loadAll(Customer.class);
	}

	//get customer by id
	@Transactional
	public Customer getCustomerById(long id) {
		return hibernateTemplate.get(Customer.class, id);
	}

	//update customer 
	@Transactional
	public void updateCustomer(Customer customer) {
		hibernateTemplate.update(customer);
	}

	//delete customer
	@Transactional
	public void deleteCustomer(long id) {
		hibernateTemplate.delete(hibernateTemplate.load(Customer.class, id));
	}
}
