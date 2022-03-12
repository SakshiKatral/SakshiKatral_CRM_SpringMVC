package com.ssk.learning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ssk.learning.dao.CustomerDao;
import com.ssk.learning.model.Customer;

@Component
@Service
public class CustomerServices {

	@Autowired
	CustomerDao customerDao;

	//add Customer
	public void addCustomers(Customer customer) {
		System.out.println(customer.toString());
		customerDao.addCustomers(customer);
	}

	//get all Customer
	public List<Customer> getAllCustomer() {
		return customerDao.getAllCustomer();
	}

	//get Customer by id
	public Customer getCustomerById(long id) {
		return customerDao.getCustomerById(id);
	}

	//update customer
	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
	}

	//delete customer
	public void deleteCustomer(long id) {
		customerDao.deleteCustomer(id);
	}
}
