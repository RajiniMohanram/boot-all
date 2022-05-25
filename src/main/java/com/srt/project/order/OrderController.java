package com.srt.project.order;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.srt.project.customer.Customer;

@Controller
public class OrderController {

	@Autowired
	private OrderRepo repo;
	
	@GetMapping("/add-order")
	public String getOrderEntryForm(Model model, @SessionAttribute("user") Customer customer) {
		Order order = new Order();
		order.setOrderDate(LocalDate.now());
		order.setCustomerId(customer.getCustomerNumber());
		model.addAttribute("order", order);
		return "order-entry";
	}
	
	@PostMapping("/add-order")
	public String addOrder(@ModelAttribute("order") Order order, Model model) {
		repo.save(order);
		return "user-home";
	}
}
