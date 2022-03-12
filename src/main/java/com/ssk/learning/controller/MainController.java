package com.ssk.learning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssk.learning.service.CustomerServices;

@Controller
public class MainController {

	@Autowired
	CustomerServices customerServices;

	@RequestMapping("/")
	public String viewHome(Model model) {
		model.addAttribute("customer", customerServices.getAllCustomer());
		model.addAttribute("title", "Customer List");
		return "customerList";
	}

}
