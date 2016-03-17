package com.practice.mvc.hibernate.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.practice.mvc.hibernate.model.Book;
import com.practice.mvc.hibernate.service.BookService;

@Controller
@RequestMapping("/")
public class ViewController {
	@Autowired
	private BookService service;
	
	@RequestMapping(value = {"/"},  method = RequestMethod.GET)	
	public String start(ModelMap model) {
		List<Book> books = service.findAllEmployees();
		for(Book b : books) System.out.println(b.toString());
		model.addAttribute("books", books);
		System.out.println("Listing Records..");
		return "index";
	}
	
	@RequestMapping(value = {"/register"})
	public String register(Book book, ModelMap model) {
		return "register";
	}
	
	@RequestMapping(value = {"store"})
	public String saveBook(Book book, BindingResult result, ModelMap model) {
		service.saveBook(book);
		model.addAttribute("book", new Book());
		model.addAttribute("success", "Book " + book.getName() + " has been stored successfully.");
		return "register";
	}
}