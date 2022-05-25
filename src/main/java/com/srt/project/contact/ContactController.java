package com.srt.project.contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ContactController {
	@Autowired
	private ContactRepo repo;
	
	@GetMapping("/all-contacts")
	public String getAllContact(Model model){
		Iterable<Contact> contacts = repo.findAll();
		model.addAttribute("contacts", contacts);
		return "contact-list";
	}
	
	@GetMapping("/add-contact")
	public String getContactForm(Model model) {
		Contact contact = new Contact();
		model.addAttribute("cont", contact);
		return "contact-form";
	}
	
	@PostMapping("/add-contact")
	public String addContact(@ModelAttribute("cont") Contact contact) {
		repo.save(contact);
		return "index";
	}
}
