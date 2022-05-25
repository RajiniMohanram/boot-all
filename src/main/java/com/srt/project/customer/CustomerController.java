package com.srt.project.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("user")
public class CustomerController {
	
	@Autowired
	private CustomerRepo repo;
	
	@GetMapping("/login")
	public String getLoginForm() {
		return "login";
	}
	
	@PostMapping("/login")
	public String doLogin(@RequestParam("username") Integer username,
			@RequestParam("password") String password, Model model) {
		Customer customer = repo.findById(username).get();
		model.addAttribute("user", customer);
		return "user-home";
	}
	
	@ModelAttribute("user")
	public Customer sessionCustomer() {
		return new Customer();
	}
}
