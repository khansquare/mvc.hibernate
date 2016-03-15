package com.practice.mvc.hibernate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.mvc.hibernate.model.Book;
import com.practice.mvc.hibernate.service.BookService;

@Controller
@RequestMapping("/")
public class ViewController {
	@Autowired
	private BookService service;
	
	@RequestMapping(value = {"/"})
	public String start(ModelMap model) {		
		return "index";
	}
	
	@RequestMapping(value = {"/register"})
	public String register(Book book, ModelMap model) {		
		return "register";
	}
	
	@RequestMapping(value = {"store"})
	public String saveBook(Book book, BindingResult result, ModelMap model) {
		service.saveBook(book);
		model.addAttribute("success", "Book " + book.getName() + " has been stored successfully.");
		return "done";
	}
}
