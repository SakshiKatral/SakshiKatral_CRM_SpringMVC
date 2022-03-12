package com.ssk.learning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssk.learning.model.Customer;
import com.ssk.learning.service.CustomerServices;

@Controller
@RequestMapping
public class CustomerController {

	@Autowired
	CustomerServices customerServices;


	//load customer data
	@GetMapping("customerList")
	public String getCustomerData(Model model) {
		model.addAttribute("customer", customerServices.getAllCustomer());
		model.addAttribute("title", "Customer List");
		return "customerList";
	}

	//add customer
	@GetMapping("addCustomer")
	public String addCustomer() {

		return "addCustomer";
	}

	//save customer data
	@PostMapping("/insertCustomer")
	public String insertCustomer(@ModelAttribute(name = "insertCustomer") Customer customer) {
		System.out.println(customer.toString());
		customerServices.addCustomers(customer);
		return "redirect:/customerList";
	}



	//update customer data
	@GetMapping("/editCustomer/{id}")
	public String getEditForm(@PathVariable(value = "id") long id, Model model) {
		Customer customer = customerServices.getCustomerById(id);
		model.addAttribute("customer", customer);
		model.addAttribute("title", "Edit Customer data");
		return "editCustomer";
	}

	@PostMapping("/editCustomer/updateCustomer") 
	public String updateCustomer(@ModelAttribute("updateCustomer") Customer customer) {
		customerServices.updateCustomer(customer);
		return "redirect:/customerList";

	}

	//delete customer 
	@GetMapping("/deleteCustomer/{id}")
	public String delecteCustomer(@PathVariable long id) {
		customerServices.deleteCustomer(id);
		return "redirect:/customerList";
	}
}
