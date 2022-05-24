package com.srt.project.contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ContactController {
	@Autowired
	private ContactRepo repo;
	
	@GetMapping("/all-contacts")
	public Iterable<Contact> getAllContact(){
		return repo.findAll();
	}
	
	@GetMapping("/find-contact/{id}")
	public Contact findContact(@PathVariable("id") Integer contactId) {
		return repo.findById(contactId).get();
	}
	
	@PostMapping("/add-contact")
	public Contact addContact(@RequestBody Contact contact) {
		return repo.save(contact);
	}
}
